import 'dart:ffi';

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
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {roomId, type};
}

class NonPreloadRoomState extends Table {
  TextColumn get roomId => text()();
  TextColumn get type => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {roomId, type};
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
