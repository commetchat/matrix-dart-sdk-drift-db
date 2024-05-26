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

class MatrixSdkDriftDatabase implements DatabaseApi {
  @override
  int get maxFileSize => 0;

  @override
  bool get supportsFileStoring => false;

  MatrixSdkDriftDBImplementation db;

  MatrixSdkDriftDatabase._(this.db);

  static Future<MatrixSdkDriftDatabase> init(QueryExecutor executor) async {
    return MatrixSdkDriftDatabase._(MatrixSdkDriftDBImplementation(executor));
  }

  @override
  Future<void> addSeenDeviceId(
      String userId, String deviceId, String publicKeys) {
    // TODO: implement addSeenDeviceId
    throw UnimplementedError();
  }

  @override
  Future<void> addSeenPublicKey(String publicKey, String deviceId) {
    // TODO: implement addSeenPublicKey
    throw UnimplementedError();
  }

  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<void> clearCache() {
    // TODO: implement clearCache
    throw UnimplementedError();
  }

  @override
  Future clearSSSSCache() {
    // TODO: implement clearSSSSCache
    throw UnimplementedError();
  }

  @override
  Future close() {
    // TODO: implement close
    throw UnimplementedError();
  }

  @override
  Future<void> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future deleteFromToDeviceQueue(int id) async {
    return db.transaction(
      () async {
        await (db.delete(db.toDeviceQueue)..where((t) => t.id.equals(id))).go();
      },
    );
  }

  @override
  Future deleteOldFiles(int savedAt) async {
    return null;
  }

  @override
  Future<void> deleteTimelineForRoom(String roomId) {
    // TODO: implement deleteTimelineForRoom
    throw UnimplementedError();
  }

  @override
  Future<String?> deviceIdSeen(userId, deviceId) {
    // TODO: implement deviceIdSeen
    throw UnimplementedError();
  }

  @override
  Future<String> exportDump() {
    // TODO: implement exportDump
    throw UnimplementedError();
  }

  @override
  Future<void> forgetRoom(String roomId) async {
    await db.transaction(() async {
      await (db.delete(db.eventData)..where((tbl) => tbl.roomId.equals(roomId)))
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

      await (db.delete(db.roomData)..where((tbl) => tbl.roomId.equals(roomId)))
          .go();
    });
  }

  @override
  Future<Map<String, BasicEvent>> getAccountData() async {
    final result = <String, BasicEvent>{};

    await db.transaction(() async {
      var data = await db.select(db.accountData).get();
      for (var entry in data) {
        result[entry.type] =
            BasicEvent(type: entry.type, content: jsonDecode(entry.content));
      }
    });

    return result;
  }

  @override
  Future<List<StoredInboundGroupSession>> getAllInboundGroupSessions() {
    // TODO: implement getAllInboundGroupSessions
    throw UnimplementedError();
  }

  @override
  Future<Map<String, Map>> getAllOlmSessions() {
    // TODO: implement getAllOlmSessions
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>?> getClient(String name) async {
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
  }

  @override
  Future<Event?> getEventById(String eventId, Room room) async {
    var data = await (db.select(db.eventData)
          ..where(
              (tbl) => tbl.roomId.equals(room.id) & tbl.eventId.equals(eventId))
          ..limit(1))
        .getSingleOrNull();

    if (data == null) {
      return null;
    }

    return Event.fromJson(jsonDecode(data.content), room);
  }

  @override
  Future<List<String>> getEventIdList(Room room,
      {int start = 0, bool includeSending = false, int? limit}) {
    // TODO: implement getEventIdList
    throw UnimplementedError();
  }

  @override
  Future<List<Event>> getEventList(Room room,
      {int start = 0, bool onlySending = false, int? limit}) async {
    var data = await db.transaction(() async {
      var sending = await (db.select(db.timelineFragmentData)
            ..where(
                (tbl) => tbl.roomId.equals(room.id) & tbl.sending.equals(true)))
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
  }

  Future<List<Event>> _getEventsByIds(List<String> eventIds, Room room) async {
    var data = await (db.select(db.eventData)
          ..where(
              (tbl) => tbl.roomId.equals(room.id) & tbl.eventId.isIn(eventIds)))
        .get();

    return data
        .map((e) => Event.fromJson(jsonDecode(e.content), room))
        .toList();
  }

  @override
  Future<Uint8List?> getFile(Uri mxcUri) async {
    return null;
  }

  @override
  Future<StoredInboundGroupSession?> getInboundGroupSession(
      String roomId, String sessionId) {
    // TODO: implement getInboundGroupSession
    throw UnimplementedError();
  }

  @override
  Future<List<StoredInboundGroupSession>> getInboundGroupSessionsToUpload() {
    // TODO: implement getInboundGroupSessionsToUpload
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getLastSentMessageUserDeviceKey(
      String userId, String deviceId) {
    // TODO: implement getLastSentMessageUserDeviceKey
    throw UnimplementedError();
  }

  @override
  Future<List<OlmSession>> getOlmSessions(String identityKey, String userId) {
    // TODO: implement getOlmSessions
    throw UnimplementedError();
  }

  @override
  Future<List<OlmSession>> getOlmSessionsForDevices(
      List<String> identityKeys, String userId) {
    // TODO: implement getOlmSessionsForDevices
    throw UnimplementedError();
  }

  @override
  Future<OutboundGroupSession?> getOutboundGroupSession(
      String roomId, String userId) {
    // TODO: implement getOutboundGroupSession
    throw UnimplementedError();
  }

  @override
  Future<CachedPresence?> getPresence(String userId) {
    // TODO: implement getPresence
    throw UnimplementedError();
  }

  @override
  Future<List<Room>> getRoomList(Client client) async {
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
  }

  @override
  Future<SSSSCache?> getSSSSCache(String type) {
    // TODO: implement getSSSSCache
    throw UnimplementedError();
  }

  @override
  Future<Room?> getSingleRoom(Client client, String roomId,
      {bool loadImportantStates = true}) {
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
  }

  @override
  Future<List<QueuedToDeviceEvent>> getToDeviceEventQueue() async {
    var data = await db.transaction(() => db.select(db.toDeviceQueue).get());
    return data
        .map((e) => QueuedToDeviceEvent(
            id: e.id,
            type: e.type,
            txnId: e.txnId,
            content: jsonDecode(e.content)))
        .toList();
  }

  @override
  Future<List<Event>> getUnimportantRoomEventStatesForRoom(
      List<String> events, Room room) {
    // TODO: implement getUnimportantRoomEventStatesForRoom
    throw UnimplementedError();
  }

  @override
  Future<User?> getUser(String userId, Room room) async {
    var data = await (db.select(db.roomMembers)
          ..where(
              (tbl) => tbl.roomId.equals(room.id) & tbl.userId.equals(userId)))
        .getSingleOrNull();

    if (data == null) {
      return null;
    }

    return Event.fromJson(jsonDecode(data.content), room).asUser;
  }

  @override
  Future<Map<String, DeviceKeysList>> getUserDeviceKeys(Client client) {
    // TODO: implement getUserDeviceKeys
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getUsers(Room room) async {
    var users = await (db.select(db.roomMembers)
          ..where((tbl) => tbl.roomId.equals(room.id)))
        .get();

    return users
        .map((e) => Event.fromJson(jsonDecode(e.content), room).asUser)
        .toList();
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
  }

  @override
  Future insertIntoToDeviceQueue(String type, String txnId, String content) {
    return db.transaction(() async {
      return await db.into(db.toDeviceQueue).insert(
          ToDeviceQueueCompanion.insert(
              type: type, txnId: txnId, content: content));
    });
  }

  @override
  Future markInboundGroupSessionAsUploaded(String roomId, String sessionId) {
    // TODO: implement markInboundGroupSessionAsUploaded
    throw UnimplementedError();
  }

  @override
  Future markInboundGroupSessionsAsNeedingUpload() {
    // TODO: implement markInboundGroupSessionsAsNeedingUpload
    throw UnimplementedError();
  }

  @override
  Future<String?> publicKeySeen(String publicKey) {
    // TODO: implement publicKeySeen
    throw UnimplementedError();
  }

  @override
  Future removeEvent(String eventId, String roomId) {
    return db.transaction(() async {
      await (db.delete(db.eventData)
            ..where((tbl) =>
                tbl.roomId.equals(roomId) & tbl.eventId.equals(eventId)))
          .go();

      var frag = await (db.select(db.timelineFragmentData)
            ..where((tbl) => tbl.roomId.equals(roomId)))
          .getSingleOrNull();

      if (frag == null) {
        return;
      }

      var fragments = jsonDecode(frag.fragmentsList) as List<dynamic>;
      fragments.remove(eventId);

      await db.into(db.timelineFragmentData).insertOnConflictUpdate(
          frag.copyWith(fragmentsList: jsonEncode(fragments)));
    });
  }

  @override
  Future removeOutboundGroupSession(String roomId) {
    // TODO: implement removeOutboundGroupSession
    throw UnimplementedError();
  }

  @override
  Future removeUserCrossSigningKey(String userId, String publicKey) {
    // TODO: implement removeUserCrossSigningKey
    throw UnimplementedError();
  }

  @override
  Future removeUserDeviceKey(String userId, String deviceId) {
    // TODO: implement removeUserDeviceKey
    throw UnimplementedError();
  }

  @override
  Future setBlockedUserCrossSigningKey(
      bool blocked, String userId, String publicKey) {
    // TODO: implement setBlockedUserCrossSigningKey
    throw UnimplementedError();
  }

  @override
  Future setBlockedUserDeviceKey(bool blocked, String userId, String deviceId) {
    // TODO: implement setBlockedUserDeviceKey
    throw UnimplementedError();
  }

  @override
  Future setLastActiveUserDeviceKey(
      int lastActive, String userId, String deviceId) {
    // TODO: implement setLastActiveUserDeviceKey
    throw UnimplementedError();
  }

  @override
  Future setLastSentMessageUserDeviceKey(
      String lastSentMessage, String userId, String deviceId) {
    // TODO: implement setLastSentMessageUserDeviceKey
    throw UnimplementedError();
  }

  @override
  Future setRoomPrevBatch(
      String? prevBatch, String roomId, Client client) async {
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
  }

  @override
  Future setVerifiedUserCrossSigningKey(
      bool verified, String userId, String publicKey) {
    // TODO: implement setVerifiedUserCrossSigningKey
    throw UnimplementedError();
  }

  @override
  Future setVerifiedUserDeviceKey(
      bool verified, String userId, String deviceId) {
    // TODO: implement setVerifiedUserDeviceKey
    throw UnimplementedError();
  }

  @override
  Future storeAccountData(String type, String content) async {
    return db.transaction(() async {
      await db.into(db.accountData).insertOnConflictUpdate(
          AccountDataCompanion.insert(type: type, content: content));
    });
  }

  @override
  Future<void> storeEventUpdate(EventUpdate eventUpdate, Client client) async {
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

        List<String> fragments = prevData != null
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
          var ids = jsonDecode(sending.fragmentsList) as List<String>;
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

      if (eventUpdate.type == EventUpdateType.accountData) {
        await db.transaction(() async {
          await db.into(db.roomAccountData).insertOnConflictUpdate(
              RoomAccountDataCompanion.insert(
                  roomId: eventUpdate.roomID,
                  type: eventUpdate.content['type'],
                  content: jsonEncode(eventUpdate.content)));
        });
      }
    }
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
    // TODO: implement storeInboundGroupSession
    throw UnimplementedError();
  }

  @override
  Future storeOlmSession(
      String identityKey, String sessionId, String pickle, int lastReceived) {
    // TODO: implement storeOlmSession
    throw UnimplementedError();
  }

  @override
  Future storeOutboundGroupSession(
      String roomId, String pickle, String deviceIds, int creationTime) {
    // TODO: implement storeOutboundGroupSession
    throw UnimplementedError();
  }

  @override
  Future<void> storePresence(String userId, CachedPresence presence) {
    // TODO: implement storePresence
    throw UnimplementedError();
  }

  @override
  Future storePrevBatch(String prevBatch) {
    // TODO: implement storePrevBatch
    throw UnimplementedError();
  }

  @override
  Future<void> storeRoomUpdate(String roomId, SyncRoomUpdate roomUpdate,
      Event? lastEvent, Client client) async {
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
          prev_batch: roomUpdate.timeline?.prevBatch ?? currentRoom.prev_batch,
          summary: RoomSummary.fromJson(currentRoom.summary.toJson()
            ..addAll(roomUpdate.summary?.toJson() ?? {})),
          lastEvent: lastEvent,
        ).toJson();

        await db.into(db.roomData).insertOnConflictUpdate(
            current.copyWith(content: Value(jsonEncode(content))));
      }
    });
  }

  @override
  Future storeSSSSCache(
      String type, String keyId, String ciphertext, String content) {
    // TODO: implement storeSSSSCache
    throw UnimplementedError();
  }

  @override
  Future storeSyncFilterId(String syncFilterId) async {
    var existing = await (db.select(db.clientData)
          ..where((tbl) => tbl.id.equals(0)))
        .getSingle();

    var data = existing.copyWith(syncFilterId: Value(syncFilterId));
    await db.into(db.clientData).insertOnConflictUpdate(data);
  }

  @override
  Future storeUserCrossSigningKey(String userId, String publicKey,
      String content, bool verified, bool blocked) {
    // TODO: implement storeUserCrossSigningKey
    throw UnimplementedError();
  }

  @override
  Future storeUserDeviceKey(String userId, String deviceId, String content,
      bool verified, bool blocked, int lastActive) {
    // TODO: implement storeUserDeviceKey
    throw UnimplementedError();
  }

  @override
  Future storeUserDeviceKeysInfo(String userId, bool outdated) {
    // TODO: implement storeUserDeviceKeysInfo
    throw UnimplementedError();
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
  }

  @override
  Future updateClientKeys(String olmAccount) async {
    var existing = await (db.select(db.clientData)
          ..where((tbl) => tbl.id.equals(0)))
        .getSingle();

    var data = existing.copyWith(olmAccount: Value(olmAccount));
    await db.into(db.clientData).insertOnConflictUpdate(data);
  }

  @override
  Future updateInboundGroupSessionAllowedAtIndex(
      String allowedAtIndex, String roomId, String sessionId) {
    // TODO: implement updateInboundGroupSessionAllowedAtIndex
    throw UnimplementedError();
  }

  @override
  Future updateInboundGroupSessionIndexes(
      String indexes, String roomId, String sessionId) {
    // TODO: implement updateInboundGroupSessionIndexes
    throw UnimplementedError();
  }
}
