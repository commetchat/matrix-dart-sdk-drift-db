import 'package:drift/drift.dart';

class ToDeviceQueue extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  TextColumn get txnId => text()();
  TextColumn get content => text()();
}

class SeenDeviceId extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userId => text()();
  TextColumn get deviceId => text()();
  TextColumn get publicKeys => text()();
}
