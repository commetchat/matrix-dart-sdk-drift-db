import 'package:drift/drift.dart';

class ClientData extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get homeserverUrl => text()();
  TextColumn get token => text()();
  DateTimeColumn get tokenExpiresAt => dateTime().nullable()();
  TextColumn get refreshToken => text().nullable()();
  TextColumn get userId => text()();
  TextColumn get deviceId => text().nullable()();
  TextColumn get deviceName => text().nullable()();
  TextColumn get prevBatch => text().nullable()();
  TextColumn get olmAccount => text().nullable()();
  TextColumn get syncFilterId => text().nullable()();
  TextColumn get wellKnown => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class ToDeviceQueue extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  TextColumn get txnId => text()();
  TextColumn get content => text()();
}

class AccountData extends Table {
  TextColumn get type => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {type};
}

class RoomData extends Table {
  TextColumn get roomId => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {roomId};
}

class PreloadRoomState extends Table {
  TextColumn get roomId => text()();
  TextColumn get type => text()();
  TextColumn get stateKey => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {roomId, type, stateKey};
}

class NonPreloadRoomState extends Table {
  TextColumn get roomId => text()();
  TextColumn get type => text()();
  TextColumn get stateKey => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {roomId, type, stateKey};
}

class RoomAccountData extends Table {
  TextColumn get roomId => text()();
  TextColumn get type => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {roomId, type};
}

class RoomMembers extends Table {
  TextColumn get roomId => text()();
  TextColumn get userId => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {roomId, userId};
}

class EventData extends Table {
  TextColumn get roomId => text()();
  TextColumn get eventId => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {roomId, eventId};
}

class TimelineFragmentData extends Table {
  TextColumn get roomId => text()();
  BoolColumn get sending => boolean()();
  TextColumn get fragmentsList => text()();

  @override
  Set<Column> get primaryKey => {roomId, sending};
}

class InboundGroupSession extends Table {
  TextColumn get roomId => text()();
  TextColumn get sessionId => text()();
  TextColumn get pickle => text()();
  TextColumn get content => text()();
  TextColumn get indexes => text()();
  TextColumn get allowedAtIndex => text()();
  TextColumn get senderKey => text()();
  TextColumn get senderClaimedKey => text()();
  BoolColumn get uploaded => boolean()();

  @override
  Set<Column> get primaryKey => {roomId, sessionId};
}

class SSSSCacheData extends Table {
  TextColumn get type => text()();
  TextColumn get keyId => text()();
  TextColumn get cipherText => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {type};
}

class OlmSessionData extends Table {
  TextColumn get identityKey => text()();
  TextColumn get sessionId => text()();
  TextColumn get pickle => text()();
  IntColumn get lastReceived => integer()();

  @override
  Set<Column> get primaryKey => {sessionId};
}

class OutboundGroupSessionData extends Table {
  TextColumn get roomId => text()();
  TextColumn get pickle => text()();
  TextColumn get deviceIds => text()();
  IntColumn get creationTime => integer()();

  @override
  Set<Column> get primaryKey => {roomId};
}

class SeenDeviceId extends Table {
  TextColumn get userId => text()();
  TextColumn get deviceId => text()();
  TextColumn get publicKeys => text()();

  @override
  Set<Column> get primaryKey => {userId, deviceId};
}

class SeenPublicKey extends Table {
  TextColumn get publicKey => text()();
  TextColumn get deviceId => text()();

  @override
  Set<Column> get primaryKey => {publicKey};
}

class UserDeviceKey extends Table {
  TextColumn get userId => text()();
  TextColumn get deviceId => text()();
  TextColumn get content => text()();
  TextColumn get lastSentMessage => text()();
  BoolColumn get verified => boolean()();
  BoolColumn get blocked => boolean()();
  IntColumn get lastActive => integer()();

  @override
  Set<Column> get primaryKey => {userId, deviceId};
}

class UserDeviceKeyInfo extends Table {
  TextColumn get userId => text()();
  BoolColumn get outdated => boolean()();

  @override
  Set<Column> get primaryKey => {userId};
}

class UserCrossSigningKey extends Table {
  TextColumn get userId => text()();
  TextColumn get publicKey => text()();
  TextColumn get content => text().nullable()();
  BoolColumn get verified => boolean()();
  BoolColumn get blocked => boolean()();

  @override
  Set<Column> get primaryKey => {userId, publicKey};
}

class PresenceData extends Table {
  TextColumn get userId => text()();
  TextColumn get presence => text()();

  @override
  Set<Column> get primaryKey => {userId};
}

class CachedProfileData extends Table {
  TextColumn get userId => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {userId};
}
