// ignore_for_file: avoid_print, depend_on_referenced_packages, implementation_imports

library matrix_dart_sdk_drift_db;

import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:matrix/encryption/utils/olm_session.dart';
import 'package:matrix/encryption/utils/outbound_group_session.dart';
import 'package:matrix/encryption/utils/ssss_cache.dart';
import 'package:matrix/encryption/utils/stored_inbound_group_session.dart';
import 'package:matrix/matrix.dart';
import 'package:matrix/src/utils/queued_to_device_event.dart';
import 'package:matrix_dart_sdk_drift_db/database.dart';
import 'package:matrix_dart_sdk_drift_db/schema/schema.dart';

@DriftDatabase(tables: [ToDeviceQueue])
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
  Future<void> forgetRoom(String roomId) {
    // TODO: implement forgetRoom
    throw UnimplementedError();
  }

  @override
  Future<Map<String, BasicEvent>> getAccountData() {
    // TODO: implement getAccountData
    throw UnimplementedError();
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
  Future<Map<String, dynamic>?> getClient(String name) {
    // TODO: implement getClient
    throw UnimplementedError();
  }

  @override
  Future<Event?> getEventById(String eventId, Room room) {
    // TODO: implement getEventById
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getEventIdList(Room room,
      {int start = 0, bool includeSending = false, int? limit}) {
    // TODO: implement getEventIdList
    throw UnimplementedError();
  }

  @override
  Future<List<Event>> getEventList(Room room,
      {int start = 0, bool onlySending = false, int? limit}) {
    // TODO: implement getEventList
    throw UnimplementedError();
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
  Future<List<Room>> getRoomList(Client client) {
    // TODO: implement getRoomList
    throw UnimplementedError();
  }

  @override
  Future<SSSSCache?> getSSSSCache(String type) {
    // TODO: implement getSSSSCache
    throw UnimplementedError();
  }

  @override
  Future<Room?> getSingleRoom(Client client, String roomId,
      {bool loadImportantStates = true}) {
    // TODO: implement getSingleRoom
    throw UnimplementedError();
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
  Future<User?> getUser(String userId, Room room) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<Map<String, DeviceKeysList>> getUserDeviceKeys(Client client) {
    // TODO: implement getUserDeviceKeys
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getUsers(Room room) {
    // TODO: implement getUsers
    throw UnimplementedError();
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
      String? olmAccount) {
    // TODO: implement insertClient
    throw UnimplementedError();
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
    // TODO: implement removeEvent
    throw UnimplementedError();
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
  Future setRoomPrevBatch(String? prevBatch, String roomId, Client client) {
    // TODO: implement setRoomPrevBatch
    throw UnimplementedError();
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
  Future storeAccountData(String type, String content) {
    // TODO: implement storeAccountData
    throw UnimplementedError();
  }

  @override
  Future<void> storeEventUpdate(EventUpdate eventUpdate, Client client) {
    // TODO: implement storeEventUpdate
    throw UnimplementedError();
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
      Event? lastEvent, Client client) {
    // TODO: implement storeRoomUpdate
    throw UnimplementedError();
  }

  @override
  Future storeSSSSCache(
      String type, String keyId, String ciphertext, String content) {
    // TODO: implement storeSSSSCache
    throw UnimplementedError();
  }

  @override
  Future storeSyncFilterId(String syncFilterId) {
    // TODO: implement storeSyncFilterId
    throw UnimplementedError();
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
      String? olmAccount) {
    // TODO: implement updateClient
    throw UnimplementedError();
  }

  @override
  Future updateClientKeys(String olmAccount) {
    // TODO: implement updateClientKeys
    throw UnimplementedError();
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
