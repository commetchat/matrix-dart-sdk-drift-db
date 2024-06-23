// ignore_for_file: avoid_print, depend_on_referenced_packages, implementation_imports

library matrix_dart_sdk_drift_db;

import 'dart:convert';
import 'dart:math';

import 'package:drift/drift.dart';
import 'package:matrix/encryption/utils/olm_session.dart';
import 'package:matrix/encryption/utils/outbound_group_session.dart';
import 'package:matrix/encryption/utils/ssss_cache.dart';
import 'package:matrix/encryption/utils/stored_inbound_group_session.dart';
import 'package:matrix/matrix.dart';
import 'package:matrix/src/utils/queued_to_device_event.dart';
import 'package:matrix_dart_sdk_drift_db/database.dart';

typedef DatabaseBenchmarkFunction = Future<T> Function<T>(
  String name,
  Future<T> Function() func, [
  int? itemCount,
]);

class MatrixSdkDriftDatabase implements DatabaseApi {
  @override
  int get maxFileSize => 0;

  @override
  bool get supportsFileStoring => false;

  MatrixSdkDriftDBImplementation db;

  String clientName;

  MatrixSdkDriftDatabase._(this.db, this.clientName,
      {this.benchmarkRunner = _benchmark});

  DatabaseBenchmarkFunction benchmarkRunner;

  static Future<T> _benchmark<T>(
    String name,
    Future<T> Function() func, [
    int? itemCount,
  ]) {
    return func();
  }

  Future<T> runBenchmarked<T>(
    String name,
    Future<T> Function() func, [
    int? itemCount,
  ]) {
    return benchmarkRunner(
        "(${clientName.substring(0, 4)}) - $name", func, itemCount);
  }

  static Future<MatrixSdkDriftDatabase> init(
      QueryExecutor executor, String clientName,
      {DatabaseBenchmarkFunction benchmark = _benchmark}) async {
    return MatrixSdkDriftDatabase._(
        MatrixSdkDriftDBImplementation(executor), clientName,
        benchmarkRunner: benchmark);
  }

  @override
  Future<void> addSeenDeviceId(
      String userId, String deviceId, String publicKeys) {
    return runBenchmarked("Add Seen Device ID", () {
      return db.into(db.seenDeviceId).insertOnConflictUpdate(
          SeenDeviceIdCompanion.insert(
              userId: userId, deviceId: deviceId, publicKeys: publicKeys));
    });
  }

  @override
  Future<void> addSeenPublicKey(String publicKey, String deviceId) {
    return runBenchmarked("Add Seen Public Key", () {
      return db.into(db.seenPublicKey).insertOnConflictUpdate(
          SeenPublicKeyCompanion.insert(
              publicKey: publicKey, deviceId: deviceId));
    });
  }

  @override
  Future<void> clear() async {
    return runBenchmarked("Clear", () async {
      await db.customStatement('PRAGMA foreign_keys = OFF');
      try {
        await transaction(() async {
          for (final table in db.allTables) {
            await db.delete(table).go();
          }
        });
      } finally {
        await db.customStatement('PRAGMA foreign_keys = ON');
      }
    });
  }

  @override
  Future<void> clearCache() async {}

  @override
  Future clearSSSSCache() {
    return runBenchmarked("Clear SSSS Cache", () {
      return db.delete(db.sSSSCacheData).go();
    });
  }

  @override
  Future close() {
    return db.close();
  }

  @override
  Future<void> delete() async {
    await clear();
    await db.close();

    //TODO: Actually delete the file
  }

  @override
  Future deleteFromToDeviceQueue(int id) async {
    return runBenchmarked("Delete from To Device Queue", () {
      return db.transaction(
        () async {
          await (db.delete(db.toDeviceQueue)..where((t) => t.id.equals(id)))
              .go();
        },
      );
    });
  }

  @override
  Future deleteOldFiles(int savedAt) async {
    return null;
  }

  @override
  Future<void> deleteTimelineForRoom(String roomId) {
    return runBenchmarked("Delete timeline for room", () {
      return (db.delete(db.timelineFragmentData)
            ..where((tbl) => tbl.roomId.equals(roomId)))
          .go();
    });
  }

  @override
  Future<String?> deviceIdSeen(userId, deviceId) async {
    return runBenchmarked("Get Device Id Seen", () async {
      return (await (db.select(db.seenDeviceId)
                ..where((tbl) =>
                    tbl.userId.equals(userId) & tbl.deviceId.equals(deviceId)))
              .getSingleOrNull())
          ?.publicKeys;
    });
  }

  @override
  Future<String> exportDump() {
    // TODO: implement exportDump
    throw UnimplementedError();
  }

  @override
  Future<void> forgetRoom(String roomId) async {
    return runBenchmarked("Forget Room", () async {
      await db.transaction(() async {
        await (db.delete(db.eventData)
              ..where((tbl) => tbl.roomId.equals(roomId)))
            .go();

        await (db.delete(db.preloadRoomState)
              ..where((tbl) => tbl.roomId.equals(roomId)))
            .go();

        await (db.delete(db.nonPreloadRoomState)
              ..where((tbl) => tbl.roomId.equals(roomId)))
            .go();

        await (db.delete(db.roomMembers)
              ..where((tbl) => tbl.roomId.equals(roomId)))
            .go();

        await (db.delete(db.roomAccountData)
              ..where((tbl) => tbl.roomId.equals(roomId)))
            .go();

        await (db.delete(db.roomData)
              ..where((tbl) => tbl.roomId.equals(roomId)))
            .go();
      });
    });
  }

  @override
  Future<Map<String, BasicEvent>> getAccountData() async {
    return runBenchmarked("Get account data", () async {
      final result = <String, BasicEvent>{};

      await db.transaction(() async {
        var data = await db.select(db.accountData).get();
        for (var entry in data) {
          result[entry.type] =
              BasicEvent(type: entry.type, content: jsonDecode(entry.content));
        }
      });

      return result;
    });
  }

  @override
  Future<List<StoredInboundGroupSession>> getAllInboundGroupSessions() async {
    return runBenchmarked("Get all inbound group sessions", () async {
      var data = await db.select(db.inboundGroupSession).get();

      return (data.map((e) => StoredInboundGroupSession(
          roomId: e.roomId,
          sessionId: e.sessionId,
          pickle: e.pickle,
          content: e.content,
          indexes: e.indexes,
          allowedAtIndex: e.allowedAtIndex,
          uploaded: e.uploaded,
          senderKey: e.senderKey,
          senderClaimedKeys: e.senderClaimedKey))).toList();
    });
  }

  @override
  Future<Map<String, Map>> getAllOlmSessions() async {
    return runBenchmarked("Get all Olm Sessions", () async {
      var data = await db.select(db.olmSessionData).get();

      var result = <String, Map>{};
      for (var entry in data) {
        if (result.containsKey(entry.identityKey) == false) {
          result[entry.identityKey] = {};
        }
        result[entry.identityKey]![entry.sessionId] = {
          "identity_key": entry.identityKey,
          "pickle": entry.pickle,
          "session_id": entry.sessionId,
          "last_received": entry.lastReceived,
        };
      }

      return result;
    });
  }

  @override
  Future<Map<String, dynamic>?> getClient(String name) async {
    return runBenchmarked("Get Client", () async {
      Map<String, dynamic>? result;
      var entry = await (db.select(db.clientData)
            ..where((tbl) => tbl.id.equals(0)))
          .getSingleOrNull();

      if (entry == null) {
        return null;
      }

      result = {};
      result["homeserver_url"] = entry.homeserverUrl;
      result["token"] = entry.token;
      result["token_expires_at"] =
          entry.tokenExpiresAt?.millisecondsSinceEpoch.toString();
      result["refresh_token"] = entry.refreshToken;
      result["user_id"] = entry.userId;
      result["device_id"] = entry.deviceId;
      result["device_name"] = entry.deviceName;
      result["prev_batch"] = entry.prevBatch;
      result["olm_account"] = entry.olmAccount;
      result["sync_filter_id"] = entry.syncFilterId;
      result.removeWhere((key, value) => value == null);

      return result;
    });
  }

  @override
  Future<Event?> getEventById(String eventId, Room room) async {
    return runBenchmarked("Get event by id", () async {
      var data = await (db.select(db.eventData)
            ..where((tbl) =>
                tbl.roomId.equals(room.id) & tbl.eventId.equals(eventId))
            ..limit(1))
          .getSingleOrNull();

      if (data == null) {
        return null;
      }

      return Event.fromJson(jsonDecode(data.content), room);
    });
  }

  @override
  Future<List<String>> getEventIdList(Room room,
      {int start = 0, bool includeSending = false, int? limit}) async {
    return runBenchmarked("Get event id list", () async {
      return await db.transaction(() async {
        var sending = includeSending
            ? await (db.select(db.timelineFragmentData)
                  ..where((tbl) =>
                      tbl.roomId.equals(room.id) & tbl.sending.equals(true)))
                .getSingleOrNull()
            : null;

        var sent = await (db.select(db.timelineFragmentData)
              ..where((tbl) =>
                  tbl.roomId.equals(room.id) & tbl.sending.equals(false)))
            .getSingleOrNull();

        if (sent == null) return <String>[];

        var sendingFragments = sending == null
            ? null
            : (jsonDecode(sending.fragmentsList) as List);

        var sentFragments = jsonDecode(sent.fragmentsList) as List;

        final eventIds = sendingFragments != null
            ? sendingFragments + sentFragments
            : sentFragments;
        if (limit != null && eventIds.length > limit) {
          eventIds.removeRange(limit, eventIds.length);
        }

        return List<String>.from(eventIds);
      });
    });
  }

  @override
  Future<List<Event>> getEventList(Room room,
      {int start = 0, bool onlySending = false, int? limit}) async {
    return runBenchmarked("Get event list", () async {
      var data = await db.transaction(() async {
        var sending = await (db.select(db.timelineFragmentData)
              ..where((tbl) =>
                  tbl.roomId.equals(room.id) & tbl.sending.equals(true)))
            .getSingleOrNull();

        var sent = await (db.select(db.timelineFragmentData)
              ..where((tbl) =>
                  tbl.roomId.equals(room.id) & tbl.sending.equals(false)))
            .getSingleOrNull();

        if (sent == null) {
          return <String>[];
        }

        var sentFragments = jsonDecode(sent.fragmentsList) as List<dynamic>;
        var sendingFragments = sending == null
            ? null
            : jsonDecode(sending.fragmentsList) as List<dynamic>;

        final end =
            min(sentFragments.length, start + (limit ?? sentFragments.length));

        final eventIds = [
          if (sendingFragments != null) ...sendingFragments,
          if (!onlySending && start < sentFragments.length)
            ...sentFragments.getRange(start, end),
        ];

        return eventIds;
      });

      return _getEventsByIds(List<String>.from(data), room);
    });
  }

  Future<List<Event>> _getEventsByIds(List<String> eventIds, Room room) async {
    var data = await (db.select(db.eventData)
          ..where(
              (tbl) => tbl.roomId.equals(room.id) & tbl.eventId.isIn(eventIds)))
        .get();

    var sorted = List<EventDataData>.empty(growable: true);
    for (var i = 0; i < eventIds.length; i++) {
      sorted.insert(i, data.firstWhere((e) => e.eventId == eventIds[i]));
    }

    return sorted
        .map((e) => Event.fromJson(jsonDecode(e.content), room))
        .toList();
  }

  @override
  Future<Uint8List?> getFile(Uri mxcUri) async {
    return null;
  }

  @override
  Future<StoredInboundGroupSession?> getInboundGroupSession(
      String roomId, String sessionId) async {
    return runBenchmarked("Get inbound group session", () async {
      var data = await (db.select(db.inboundGroupSession)
            ..where((tbl) =>
                tbl.roomId.equals(roomId) & tbl.sessionId.equals(sessionId)))
          .getSingleOrNull();

      if (data == null) {
        return null;
      }

      return StoredInboundGroupSession(
          roomId: data.roomId,
          sessionId: data.sessionId,
          pickle: data.pickle,
          content: data.content,
          indexes: data.indexes,
          allowedAtIndex: data.allowedAtIndex,
          uploaded: data.uploaded,
          senderKey: data.senderKey,
          senderClaimedKeys: data.senderClaimedKey);
    });
  }

  @override
  Future<List<StoredInboundGroupSession>>
      getInboundGroupSessionsToUpload() async {
    return runBenchmarked("Get inbound group sessions to upload", () async {
      var data = await (db.select(db.inboundGroupSession)
            ..where((tbl) => tbl.uploaded.equals(false)))
          .get();

      return (data.map((e) => StoredInboundGroupSession(
          roomId: e.roomId,
          sessionId: e.sessionId,
          pickle: e.pickle,
          content: e.content,
          indexes: e.indexes,
          allowedAtIndex: e.allowedAtIndex,
          uploaded: e.uploaded,
          senderKey: e.senderKey,
          senderClaimedKeys: e.senderClaimedKey))).toList();
    });
  }

  @override
  Future<List<String>> getLastSentMessageUserDeviceKey(
      String userId, String deviceId) async {
    return runBenchmarked("Get last sent message user device key", () async {
      var data = await (db.select(db.userDeviceKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.deviceId.equals(deviceId)))
          .getSingleOrNull();
      if (data == null) return [];

      return [data.lastSentMessage];
    });
  }

  @override
  Future<List<OlmSession>> getOlmSessions(
      String identityKey, String userId) async {
    return runBenchmarked("Get olm sessions", () async {
      var data = await (db.select(db.olmSessionData)
            ..where((tbl) => tbl.identityKey.equals(identityKey)))
          .get();

      return data
          .map((e) => OlmSession.fromJson({
                'identity_key': e.identityKey,
                'pickle': e.pickle,
                'session_id': e.sessionId,
                'last_received': e.lastReceived
              }, userId))
          .toList();
    });
  }

  @override
  Future<List<OlmSession>> getOlmSessionsForDevices(
      List<String> identityKeys, String userId) async {
    return runBenchmarked("Get olm sessions for devices", () async {
      final sessions =
          await Future.wait(identityKeys.map((e) => getOlmSessions(e, userId)));
      return <OlmSession>[for (final sublist in sessions) ...sublist];
    });
  }

  @override
  Future<OutboundGroupSession?> getOutboundGroupSession(
      String roomId, String userId) async {
    return runBenchmarked("Get outbound group session", () async {
      var data = await (db.select(db.outboundGroupSessionData)
            ..where((tbl) => tbl.roomId.equals(roomId)))
          .getSingleOrNull();

      if (data == null) return null;

      return OutboundGroupSession.fromJson({
        "room_id": data.roomId,
        "pickle": data.pickle,
        "device_ids": data.deviceIds,
        "creation_time": data.creationTime,
      }, userId);
    });
  }

  @override
  Future<CachedPresence?> getPresence(String userId) async {
    return runBenchmarked("Get presence", () async {
      var data = await (db.select(db.presenceData)
            ..where((tbl) => tbl.userId.equals(userId)))
          .getSingleOrNull();

      if (data == null) return null;

      return CachedPresence.fromJson(jsonDecode(data.presence));
    });
  }

  @override
  Future<List<Room>> getRoomList(Client client) async {
    return runBenchmarked("Get room list", () async {
      final rooms = <String, Room>{};

      await db.transaction(() async {
        var allRooms = await db.select(db.roomData).get();

        for (var data in allRooms) {
          var room = Room.fromJson(jsonDecode(data.content), client);
          rooms[room.id] = room;
        }

        var preloadStates = await db.select(db.preloadRoomState).get();

        for (var state in preloadStates) {
          var room = rooms[state.roomId];
          if (room == null) {
            continue;
          }

          var content = jsonDecode(state.content) as Map<String, dynamic>;
          for (var entry in content.values) {
            var event = Event.fromJson(entry, room);
            room.setState(event);
          }
        }

        var accountDatas = await db.select(db.roomAccountData).get();

        for (var accountData in accountDatas) {
          var event = BasicRoomEvent.fromJson(jsonDecode(accountData.content));

          var room = rooms[event.roomId];
          if (room == null) {
            print("Found account data for unknown room ${event.roomId}");
            continue;
          }

          room.roomAccountData[event.type] = event;
        }
      });

      return rooms.values.toList();
    });
  }

  @override
  Future<SSSSCache?> getSSSSCache(String type) async {
    return runBenchmarked("Get SSSS Cache", () async {
      var data = await (db.select(db.sSSSCacheData)
            ..where((tbl) => tbl.type.equals(type)))
          .getSingleOrNull();

      if (data == null) {
        return null;
      }

      return SSSSCache(
          type: data.type,
          keyId: data.keyId,
          ciphertext: data.cipherText,
          content: data.content);
    });
  }

  @override
  Future<Room?> getSingleRoom(Client client, String roomId,
      {bool loadImportantStates = true}) {
    return runBenchmarked("Get single room", () async {
      return db.transaction(() async {
        var roomData = await (db.select(db.roomData)
              ..where((tbl) => tbl.roomId.equals(roomId))
              ..limit(1))
            .getSingleOrNull();

        if (roomData == null) {
          return null;
        }

        final room = Room.fromJson(jsonDecode(roomData.content), client);

        if (loadImportantStates) {
          var states = await (db.select(db.preloadRoomState)
                ..where((tbl) => tbl.roomId.equals(roomId)))
              .get();
          for (var state in states) {
            var content = jsonDecode(state.content)[''];
            room.setState(Event.fromJson(content, room));
          }
        }

        return room;
      });
    });
  }

  @override
  Future<List<QueuedToDeviceEvent>> getToDeviceEventQueue() async {
    return runBenchmarked("Get to device event queue", () async {
      var data = await db.transaction(() => db.select(db.toDeviceQueue).get());
      return data
          .map((e) => QueuedToDeviceEvent(
              id: e.id,
              type: e.type,
              txnId: e.txnId,
              content: jsonDecode(e.content)))
          .toList();
    });
  }

  @override
  Future<List<Event>> getUnimportantRoomEventStatesForRoom(
      List<String> events, Room room) async {
    return runBenchmarked("Get unimportant room event states for room",
        () async {
      var states = await (db.select(db.nonPreloadRoomState)
            ..where(
                (tbl) => tbl.roomId.equals(room.id) & tbl.type.isIn(events)))
          .get();

      return states
          .map((e) => Event.fromJson(jsonDecode(e.content), room))
          .toList();
    });
  }

  @override
  Future<User?> getUser(String userId, Room room) async {
    return runBenchmarked("Get user", () async {
      var data = await (db.select(db.roomMembers)
            ..where((tbl) =>
                tbl.roomId.equals(room.id) & tbl.userId.equals(userId)))
          .getSingleOrNull();

      if (data == null) {
        return null;
      }

      return Event.fromJson(jsonDecode(data.content), room).asUser;
    });
  }

  @override
  Future<Map<String, DeviceKeysList>> getUserDeviceKeys(Client client) async {
    // TODO: Why is this not implemented
    return {};
    // return db.transaction(() async {
    //   var keyInfos = await db.select(db.userDeviceKeyInfo).get();
    //   if (keyInfos.isEmpty) {
    //     return {};
    //   }

    //   final keyIsOutdated = <String, bool>{
    //     for (var entry in keyInfos) entry.userId: entry.outdated
    //   };

    //   final userDeviceKeys = await db.select(db.userDeviceKey).get();

    // final userCrossSigningKeys = await db.select(db.userCrossSigningKeys).get()
    // final userCrossSigningKeys =
    //     await instance.userCrossSigningKeys.where().findAll();

    // final res = <String, DeviceKeysList>{};

    // for (final entry in keyInfos) {
    //   var crossSigningKeys = userCrossSigningKeys
    //       .where((element) => element.userId == entry.userId)
    //       .toList();

    //   var childEntries = userDeviceKeys
    //       .where((element) => element.userId == entry.userId)
    //       .toList();

    //   res[entry.userId] = DeviceKeysList.fromDbJson(
    //       {
    //         'client_id': client.id,
    //         'user_id': entry.userId,
    //         'outdated': keyIsOutdated[entry.userId],
    //       },
    //       childEntries
    //           .map((e) => {
    //                 "device_id": e.deviceId,
    //                 "verified": e.verified,
    //                 "blocked": e.blocked,
    //                 "content": jsonDecode(e.content)
    //               })
    //           .toList(),
    //       crossSigningKeys
    //           .map((e) => <String, dynamic>{
    //                 "public_key": e.publicKey,
    //                 "verified": e.verified,
    //                 "blocked": e.blocked,
    //                 "content": jsonDecode(e.content ?? "{}")
    //               })
    //           .toList(),
    //       client);
    // }

    // return res;
    // });
  }

  @override
  Future<List<User>> getUsers(Room room) async {
    return runBenchmarked("Get users", () async {
      var users = await (db.select(db.roomMembers)
            ..where((tbl) => tbl.roomId.equals(room.id)))
          .get();

      return users
          .map((e) => Event.fromJson(jsonDecode(e.content), room).asUser)
          .toList();
    });
  }

  @override
  Future<bool> importDump(String export) {
    // TODO: implement importDump
    throw UnimplementedError();
  }

  @override
  Future insertClient(
      String name,
      String homeserverUrl,
      String token,
      DateTime? tokenExpiresAt,
      String? refreshToken,
      String userId,
      String? deviceId,
      String? deviceName,
      String? prevBatch,
      String? olmAccount) async {
    return runBenchmarked("Insert client", () async {
      await db.into(db.clientData).insertOnConflictUpdate(
          ClientDataCompanion.insert(
              id: const Value(0),
              name: name,
              homeserverUrl: homeserverUrl,
              token: token,
              tokenExpiresAt: Value(tokenExpiresAt),
              refreshToken: Value(refreshToken),
              userId: userId,
              deviceId: Value(deviceId),
              deviceName: Value(deviceName),
              prevBatch: Value(prevBatch),
              olmAccount: Value(olmAccount)));
    });
  }

  @override
  Future insertIntoToDeviceQueue(String type, String txnId, String content) {
    return runBenchmarked("Insert into to device queue", () async {
      return db.transaction(() async {
        return await db.into(db.toDeviceQueue).insert(
            ToDeviceQueueCompanion.insert(
                type: type, txnId: txnId, content: content));
      });
    });
  }

  @override
  Future markInboundGroupSessionAsUploaded(
      String roomId, String sessionId) async {
    return runBenchmarked("Mark inbound group session as uploaded", () async {
      await db.transaction(() async {
        var existing = await (db.select(db.inboundGroupSession)
              ..where((tbl) =>
                  tbl.roomId.equals(roomId) & tbl.sessionId.equals(sessionId)))
            .getSingleOrNull();

        if (existing == null) {
          return;
        }

        db
            .into(db.inboundGroupSession)
            .insertOnConflictUpdate(existing.copyWith(uploaded: true));
      });
    });
  }

  @override
  Future markInboundGroupSessionsAsNeedingUpload() async {
    return runBenchmarked("Mark inbound group sessions as needing upload",
        () async {
      return db.update(db.inboundGroupSession)
        ..write(const InboundGroupSessionCompanion(uploaded: Value(false)));
    });
  }

  @override
  Future<String?> publicKeySeen(String publicKey) async {
    return runBenchmarked("public key seen", () async {
      return (await (db.select(db.seenPublicKey)
                ..where((tbl) => tbl.publicKey.equals(publicKey)))
              .getSingleOrNull())
          ?.deviceId;
    });
  }

  @override
  Future removeEvent(String eventId, String roomId) {
    return runBenchmarked("Remove event", () async {
      return db.transaction(() async {
        await (db.delete(db.eventData)
              ..where((tbl) =>
                  tbl.roomId.equals(roomId) & tbl.eventId.equals(eventId)))
            .go();

        var frags = await (db.select(db.timelineFragmentData)
              ..where((tbl) => tbl.roomId.equals(roomId)))
            .get();

        for (var frag in frags) {
          var fragments = jsonDecode(frag.fragmentsList) as List<dynamic>;
          fragments.remove(eventId);

          await db.into(db.timelineFragmentData).insertOnConflictUpdate(
              frag.copyWith(fragmentsList: jsonEncode(fragments)));
        }
      });
    });
  }

  @override
  Future removeOutboundGroupSession(String roomId) {
    return runBenchmarked("Remove outbound group session", () async {
      return (db.delete(db.outboundGroupSessionData)
            ..where((tbl) => tbl.roomId.equals(roomId)))
          .go();
    });
  }

  @override
  Future removeUserCrossSigningKey(String userId, String publicKey) {
    return runBenchmarked("remove user cross signing key", () async {
      return (db.delete(db.userCrossSigningKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.publicKey.equals(publicKey)))
          .go();
    });
  }

  @override
  Future removeUserDeviceKey(String userId, String deviceId) {
    return runBenchmarked("Remove user device key", () async {
      return (db.delete(db.userDeviceKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.deviceId.equals(deviceId)))
          .go();
    });
  }

  @override
  Future setBlockedUserCrossSigningKey(
      bool blocked, String userId, String publicKey) async {
    return runBenchmarked("set blocked user cross signing key", () async {
      var existing = await (db.select(db.userCrossSigningKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.publicKey.equals(publicKey)))
          .getSingleOrNull();

      if (existing == null) {
        return;
      }

      await db
          .into(db.userCrossSigningKey)
          .insertOnConflictUpdate(existing.copyWith(blocked: blocked));
    });
  }

  @override
  Future setBlockedUserDeviceKey(
      bool blocked, String userId, String deviceId) async {
    return runBenchmarked("set blocked user device key", () async {
      var existing = await (db.select(db.userDeviceKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.deviceId.equals(deviceId)))
          .getSingleOrNull();

      if (existing == null) {
        return;
      }

      await db
          .into(db.userDeviceKey)
          .insertOnConflictUpdate(existing.copyWith(blocked: blocked));
    });
  }

  @override
  Future setLastActiveUserDeviceKey(
      int lastActive, String userId, String deviceId) async {
    return runBenchmarked("set last active user device key", () async {
      var key = await (db.select(db.userDeviceKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.deviceId.equals(deviceId)))
          .getSingleOrNull();

      if (key == null) {
        return;
      }

      await db
          .into(db.userDeviceKey)
          .insertOnConflictUpdate(key.copyWith(lastActive: lastActive));
    });
  }

  @override
  Future setLastSentMessageUserDeviceKey(
      String lastSentMessage, String userId, String deviceId) async {
    return runBenchmarked("Set last sent message user device key", () async {
      var key = await (db.select(db.userDeviceKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.deviceId.equals(deviceId)))
          .getSingleOrNull();

      if (key == null) {
        return;
      }

      await db.into(db.userDeviceKey).insertOnConflictUpdate(
          key.copyWith(lastSentMessage: lastSentMessage));
    });
  }

  @override
  Future setRoomPrevBatch(
      String? prevBatch, String roomId, Client client) async {
    return runBenchmarked("set room prev batch", () async {
      await db.transaction(() async {
        var existing = await (db.select(db.roomData)
              ..where((tbl) => tbl.roomId.equals(roomId)))
            .getSingleOrNull();

        if (existing == null) {
          return;
        }

        var room = Room.fromJson(jsonDecode(existing.content), client);
        room.prev_batch = prevBatch;
        var content = jsonEncode(room.toJson());

        await db
            .into(db.roomData)
            .insertOnConflictUpdate(existing.copyWith(content: content));
      });
    });
  }

  @override
  Future setVerifiedUserCrossSigningKey(
      bool verified, String userId, String publicKey) async {
    return runBenchmarked("set verified user cross signing key", () async {
      var existing = await (db.select(db.userCrossSigningKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.publicKey.equals(publicKey)))
          .getSingleOrNull();

      if (existing == null) {
        return;
      }

      await db
          .into(db.userCrossSigningKey)
          .insertOnConflictUpdate(existing.copyWith(verified: verified));
    });
  }

  @override
  Future setVerifiedUserDeviceKey(
      bool verified, String userId, String deviceId) async {
    return runBenchmarked("set verified user device key", () async {
      var existing = await (db.select(db.userDeviceKey)
            ..where((tbl) =>
                tbl.userId.equals(userId) & tbl.deviceId.equals(deviceId)))
          .getSingleOrNull();

      if (existing == null) {
        return;
      }

      await db
          .into(db.userDeviceKey)
          .insertOnConflictUpdate(existing.copyWith(verified: verified));
    });
  }

  @override
  Future storeAccountData(String type, String content) async {
    return runBenchmarked("Store account data", () async {
      return db.transaction(() async {
        await db.into(db.accountData).insertOnConflictUpdate(
            AccountDataCompanion.insert(type: type, content: content));
      });
    });
  }

  @override
  Future<void> storeEventUpdate(EventUpdate eventUpdate, Client client) async {
    return runBenchmarked("Store event update", () async {
      if (eventUpdate.type == EventUpdateType.ephemeral) {
        return;
      }

      final tmpRoom = client.getRoomById(eventUpdate.roomID) ??
          Room(id: eventUpdate.roomID, client: client);

      if (eventUpdate.content['type'] == EventTypes.Redaction) {
        final eventId = eventUpdate.content.tryGet<String>('redacts');
        final event =
            eventId != null ? await getEventById(eventId, tmpRoom) : null;

        if (event != null) {
          event.setRedactionEvent(Event.fromJson(eventUpdate.content, tmpRoom));

          await db.transaction(() async {
            var data = EventDataCompanion.insert(
                roomId: eventUpdate.roomID,
                eventId: eventId!,
                content: jsonEncode(event.toJson()));

            await db.into(db.eventData).insertOnConflictUpdate(data);
          });

          if (tmpRoom.lastEvent?.eventId == event.eventId) {
            await db.transaction(() async {
              if (client.importantStateEvents.contains(event.type)) {
                await db.into(db.preloadRoomState).insertOnConflictUpdate(
                    PreloadRoomStateCompanion.insert(
                        roomId: eventUpdate.roomID,
                        type: event.type,
                        content: jsonEncode({"": event.toJson()})));
              } else {
                await db.into(db.nonPreloadRoomState).insertOnConflictUpdate(
                    NonPreloadRoomStateCompanion.insert(
                        roomId: eventUpdate.roomID,
                        type: event.type,
                        content: jsonEncode({"": event.toJson()})));
              }
            });
          }
        }
      }

      if ([EventUpdateType.timeline, EventUpdateType.history]
          .contains(eventUpdate.type)) {
        final eventId = eventUpdate.content["event_id"];
        final prevEvent = await (db.select(db.eventData)
              ..where((tbl) =>
                  tbl.roomId.equals(eventUpdate.roomID) &
                  tbl.eventId.equals(eventId))
              ..limit(1))
            .getSingleOrNull();

        EventStatus? prevStatus;
        if (prevEvent != null) {
          var content = jsonDecode(prevEvent.content) as Map<String, dynamic>;
          final statusInt = content.tryGet<int>('status') ??
              content
                  .tryGetMap<String, dynamic>('unsigned')
                  ?.tryGet<int>(messageSendingStatusKey);

          prevStatus = statusInt == null ? null : eventStatusFromInt(statusInt);
        }

        final newStatus = eventStatusFromInt(
          eventUpdate.content.tryGet<int>('status') ??
              eventUpdate.content
                  .tryGetMap<String, dynamic>('unsigned')
                  ?.tryGet<int>(messageSendingStatusKey) ??
              EventStatus.synced.intValue,
        );

        if (!newStatus.isSynced && prevStatus != null && prevStatus.isSynced) {
          return;
        }

        final status = newStatus.isError || prevStatus == null
            ? newStatus
            : latestEventStatus(
                prevStatus,
                newStatus,
              );

        eventUpdate.content['unsigned'] ??= <String, dynamic>{};
        eventUpdate.content['unsigned'][messageSendingStatusKey] =
            eventUpdate.content['status'] = status.intValue;

        eventUpdate.content['unsigned'] ??= <String, dynamic>{};
        eventUpdate.content['unsigned'][messageSendingStatusKey] =
            eventUpdate.content['status'] = status.intValue;

        final transactionId = eventUpdate.content
            .tryGetMap<String, dynamic>('unsigned')
            ?.tryGet<String>('transaction_id');

        await db.transaction(() async {
          await db.into(db.eventData).insertOnConflictUpdate(
              EventDataCompanion.insert(
                  roomId: eventUpdate.roomID,
                  eventId: eventId,
                  content: jsonEncode(eventUpdate.content)));
        });

        await db.transaction(() async {
          var prevData = await (db.select(db.timelineFragmentData)
                ..where((tbl) =>
                    tbl.roomId.equals(eventUpdate.roomID) &
                    tbl.sending.equals(!status.isSent))
                ..limit(1))
              .getSingleOrNull();

          List fragments = prevData != null
              ? jsonDecode(prevData.fragmentsList)
              : List<String>.empty(growable: true);

          bool sending = !status.isSent;

          if (fragments.contains(eventId) == false) {
            if (eventUpdate.type == EventUpdateType.history) {
              fragments.add(eventId);
            } else {
              fragments.insert(0, eventId);
            }
          } else if (status.isSynced &&
              prevStatus != null &&
              prevStatus.isSent &&
              eventUpdate.type != EventUpdateType.history) {
            fragments.remove(eventId);
            fragments.insert(0, eventId);
          }

          await db.into(db.timelineFragmentData).insertOnConflictUpdate(
              TimelineFragmentDataCompanion.insert(
                  roomId: eventUpdate.roomID,
                  sending: sending,
                  fragmentsList: jsonEncode(fragments)));
        });

        if (status.isSent) {
          var sending = await (db.select(db.timelineFragmentData)
                ..where((tbl) =>
                    tbl.roomId.equals(eventUpdate.roomID) &
                    tbl.sending.equals(true)))
              .getSingleOrNull();

          if (sending != null) {
            var ids = jsonDecode(sending.fragmentsList) as List;
            var index = ids.indexOf(eventId);
            if (index != -1) {
              ids.removeAt(index);
              await db.into(db.timelineFragmentData).insertOnConflictUpdate(
                  TimelineFragmentDataCompanion.insert(
                      roomId: eventUpdate.roomID,
                      sending: true,
                      fragmentsList: jsonEncode(ids)));
            }
          }
        }

        if (!status.isError && !status.isSending && transactionId != null) {
          await removeEvent(transactionId, eventUpdate.roomID);
        }
      }

      final stateKey = eventUpdate.content['state_key'];
      // Store a common state event
      if (stateKey != null) {
        if (eventUpdate.content['type'] == EventTypes.RoomMember) {
          await db.transaction(() async {
            await db.into(db.roomMembers).insertOnConflictUpdate(
                RoomMembersCompanion.insert(
                    roomId: eventUpdate.roomID,
                    userId: eventUpdate.content['state_key'],
                    content: jsonEncode(eventUpdate.content)));
          });
        } else {
          final type = eventUpdate.content['type'] as String;

          await db.transaction(() async {
            if (client.importantStateEvents.contains(type)) {
              var prev = await (db.select(db.preloadRoomState)
                    ..where((tbl) =>
                        tbl.roomId.equals(eventUpdate.roomID) &
                        tbl.type.equals(type))
                    ..limit(1))
                  .getSingleOrNull();

              var content = prev != null ? jsonDecode(prev.content) : {};
              content[stateKey] = eventUpdate.content;

              await db.into(db.preloadRoomState).insertOnConflictUpdate(
                  PreloadRoomStateCompanion.insert(
                      roomId: eventUpdate.roomID,
                      type: type,
                      content: jsonEncode(content)));
            } else {
              var prev = await (db.select(db.nonPreloadRoomState)
                    ..where((tbl) =>
                        tbl.roomId.equals(eventUpdate.roomID) &
                        tbl.type.equals(type))
                    ..limit(1))
                  .getSingleOrNull();

              var content = prev != null ? jsonDecode(prev.content) : {};
              content[stateKey] = eventUpdate.content;
              await db.into(db.nonPreloadRoomState).insertOnConflictUpdate(
                  NonPreloadRoomStateCompanion.insert(
                      roomId: eventUpdate.roomID,
                      type: type,
                      content: jsonEncode(content)));
            }
          });
        }
      }

      if (eventUpdate.type == EventUpdateType.accountData) {
        await db.transaction(() async {
          await db.into(db.roomAccountData).insertOnConflictUpdate(
              RoomAccountDataCompanion.insert(
                  roomId: eventUpdate.roomID,
                  type: eventUpdate.content['type'],
                  content: jsonEncode(eventUpdate.content)));
        });
      }
    });
  }

  @override
  Future storeFile(Uri mxcUri, Uint8List bytes, int time) async {
    return null;
  }

  @override
  Future storeInboundGroupSession(
      String roomId,
      String sessionId,
      String pickle,
      String content,
      String indexes,
      String allowedAtIndex,
      String senderKey,
      String senderClaimedKey) {
    return runBenchmarked("Store inbound group session", () async {
      return db.into(db.inboundGroupSession).insertOnConflictUpdate(
          InboundGroupSessionCompanion.insert(
              roomId: roomId,
              sessionId: sessionId,
              pickle: pickle,
              content: content,
              indexes: indexes,
              allowedAtIndex: allowedAtIndex,
              senderKey: senderKey,
              senderClaimedKey: senderClaimedKey,
              uploaded: false));
    });
  }

  @override
  Future storeOlmSession(
      String identityKey, String sessionId, String pickle, int lastReceived) {
    return runBenchmarked("Store olm session", () async {
      return db.into(db.olmSessionData).insertOnConflictUpdate(
          OlmSessionDataCompanion.insert(
              identityKey: identityKey,
              sessionId: sessionId,
              pickle: pickle,
              lastReceived: lastReceived));
    });
  }

  @override
  Future storeOutboundGroupSession(
      String roomId, String pickle, String deviceIds, int creationTime) {
    return runBenchmarked("Store outbound group session", () async {
      return db.into(db.outboundGroupSessionData).insertOnConflictUpdate(
          OutboundGroupSessionDataCompanion.insert(
              roomId: roomId,
              pickle: pickle,
              deviceIds: deviceIds,
              creationTime: creationTime));
    });
  }

  @override
  Future<void> storePresence(String userId, CachedPresence presence) {
    return runBenchmarked("Store presence", () {
      return db.into(db.presenceData).insertOnConflictUpdate(
          PresenceDataCompanion.insert(
              userId: userId, presence: jsonEncode(presence.toJson())));
    });
  }

  @override
  Future storePrevBatch(String prevBatch) async {
    return runBenchmarked("Store prev batch", () async {
      var data = await (db.select(db.clientData)).getSingleOrNull();

      if (data == null) {
        return null;
      }

      await (db
          .into(db.clientData)
          .insertOnConflictUpdate(data.copyWith(prevBatch: Value(prevBatch))));
    });
  }

  @override
  Future<void> storeRoomUpdate(String roomId, SyncRoomUpdate roomUpdate,
      Event? lastEvent, Client client) async {
    return runBenchmarked("Store room update", () async {
      // Leave room if membership is leave
      if (roomUpdate is LeftRoomUpdate) {
        await forgetRoom(roomId);
        return;
      }
      final membership = roomUpdate is LeftRoomUpdate
          ? Membership.leave
          : roomUpdate is InvitedRoomUpdate
              ? Membership.invite
              : Membership.join;

      await db.transaction(() async {
        var existing = await (db.select(db.roomData)
              ..where((tbl) => tbl.roomId.equals(roomId))
              ..limit(1))
            .getSingleOrNull();

        if (existing == null) {
          var content = roomUpdate is JoinedRoomUpdate
              ? Room(
                  client: client,
                  id: roomId,
                  membership: membership,
                  highlightCount:
                      roomUpdate.unreadNotifications?.highlightCount?.toInt() ??
                          0,
                  notificationCount: roomUpdate
                          .unreadNotifications?.notificationCount
                          ?.toInt() ??
                      0,
                  prev_batch: roomUpdate.timeline?.prevBatch,
                  summary: roomUpdate.summary,
                  lastEvent: lastEvent,
                ).toJson()
              : Room(
                  client: client,
                  id: roomId,
                  membership: membership,
                  lastEvent: lastEvent,
                ).toJson();

          var data = RoomDataCompanion.insert(
              roomId: roomId, content: jsonEncode(content));
          await db.into(db.roomData).insertOnConflictUpdate(data);
        } else if (roomUpdate is JoinedRoomUpdate) {
          var current = existing.toCompanion(true);
          final currentRoom =
              Room.fromJson(jsonDecode(current.content.value), client);
          var content = Room(
            client: client,
            id: roomId,
            membership: membership,
            highlightCount:
                roomUpdate.unreadNotifications?.highlightCount?.toInt() ??
                    currentRoom.highlightCount,
            notificationCount:
                roomUpdate.unreadNotifications?.notificationCount?.toInt() ??
                    currentRoom.notificationCount,
            prev_batch:
                roomUpdate.timeline?.prevBatch ?? currentRoom.prev_batch,
            summary: RoomSummary.fromJson(currentRoom.summary.toJson()
              ..addAll(roomUpdate.summary?.toJson() ?? {})),
            lastEvent: lastEvent,
          ).toJson();

          await db.into(db.roomData).insertOnConflictUpdate(
              current.copyWith(content: Value(jsonEncode(content))));
        }
      });
    });
  }

  @override
  Future storeSSSSCache(
      String type, String keyId, String ciphertext, String content) {
    return runBenchmarked("Store ssss cache", () async {
      return db.sSSSCacheData.insertOnConflictUpdate(
          SSSSCacheDataCompanion.insert(
              type: type,
              keyId: keyId,
              cipherText: ciphertext,
              content: content));
    });
  }

  @override
  Future storeSyncFilterId(String syncFilterId) async {
    return runBenchmarked("store sync filter id", () async {
      var existing = await (db.select(db.clientData)
            ..where((tbl) => tbl.id.equals(0)))
          .getSingle();

      var data = existing.copyWith(syncFilterId: Value(syncFilterId));
      await db.into(db.clientData).insertOnConflictUpdate(data);
    });
  }

  @override
  Future storeUserCrossSigningKey(String userId, String publicKey,
      String content, bool verified, bool blocked) {
    return runBenchmarked("Store user cross signing key", () async {
      return db.into(db.userCrossSigningKey).insertOnConflictUpdate(
          UserCrossSigningKeyCompanion.insert(
              userId: userId,
              publicKey: publicKey,
              verified: verified,
              blocked: blocked));
    });
  }

  @override
  Future storeUserDeviceKey(String userId, String deviceId, String content,
      bool verified, bool blocked, int lastActive) {
    return db.into(db.userDeviceKey).insertOnConflictUpdate(
        UserDeviceKeyCompanion.insert(
            userId: userId,
            deviceId: deviceId,
            content: content,
            lastSentMessage: "",
            verified: verified,
            blocked: blocked,
            lastActive: lastActive));
  }

  @override
  Future storeUserDeviceKeysInfo(String userId, bool outdated) {
    return runBenchmarked("Store user device keys info", () async {
      return db.into(db.userDeviceKeyInfo).insertOnConflictUpdate(
          UserDeviceKeyInfoCompanion.insert(
              userId: userId, outdated: outdated));
    });
  }

  @override
  Future<void> transaction(Future<void> Function() action) {
    return db.transaction(action);
  }

  @override
  Future updateClient(
      String homeserverUrl,
      String token,
      DateTime? tokenExpiresAt,
      String? refreshToken,
      String userId,
      String? deviceId,
      String? deviceName,
      String? prevBatch,
      String? olmAccount) async {
    return runBenchmarked("Update client", () async {
      var existing = await (db.select(db.clientData)
            ..where((tbl) => tbl.id.equals(0)))
          .getSingleOrNull();

      if (existing == null) {
        return;
      }

      await db.into(db.clientData).insertOnConflictUpdate(
          ClientDataCompanion.insert(
              id: const Value(0),
              name: existing.name,
              homeserverUrl: homeserverUrl,
              token: token,
              tokenExpiresAt: Value(tokenExpiresAt),
              refreshToken: Value(refreshToken),
              userId: userId,
              deviceId: Value(deviceId),
              deviceName: Value(deviceName),
              prevBatch: Value(prevBatch),
              olmAccount: Value(olmAccount)));
    });
  }

  @override
  Future updateClientKeys(String olmAccount) async {
    return runBenchmarked("Update client keys", () async {
      var existing = await (db.select(db.clientData)
            ..where((tbl) => tbl.id.equals(0)))
          .getSingle();

      var data = existing.copyWith(olmAccount: Value(olmAccount));
      await db.into(db.clientData).insertOnConflictUpdate(data);
    });
  }

  @override
  Future updateInboundGroupSessionAllowedAtIndex(
      String allowedAtIndex, String roomId, String sessionId) async {
    return runBenchmarked("update inbound group session allowed at index",
        () async {
      await db.transaction(() async {
        var data = await (db.select(db.inboundGroupSession)
              ..where((tbl) =>
                  tbl.roomId.equals(roomId) & tbl.sessionId.equals(sessionId))
              ..limit(1))
            .getSingleOrNull();

        if (data == null) {
          print(
              "tried to update group session allowed indices of a session which was not found in db");
          return;
        }

        await db.into(db.inboundGroupSession).insertOnConflictUpdate(
            data.copyWith(allowedAtIndex: allowedAtIndex));
      });
    });
  }

  @override
  Future updateInboundGroupSessionIndexes(
      String indexes, String roomId, String sessionId) async {
    return runBenchmarked("Update inbound group session indexes", () async {
      await db.transaction(() async {
        var data = await (db.select(db.inboundGroupSession)
              ..where((tbl) =>
                  tbl.roomId.equals(roomId) & tbl.sessionId.equals(sessionId))
              ..limit(1))
            .getSingleOrNull();

        if (data == null) {
          print(
              "tried to update group session indices of a session which was not found in db");
          return;
        }

        await db
            .into(db.inboundGroupSession)
            .insertOnConflictUpdate(data.copyWith(indexes: indexes));
      });
    });
  }
}
