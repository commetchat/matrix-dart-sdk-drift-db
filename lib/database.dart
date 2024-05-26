import 'package:drift/drift.dart';
import 'package:matrix_dart_sdk_drift_db/schema/schema.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  ClientData,
  ToDeviceQueue,
  AccountData,
  RoomData,
  PreloadRoomState,
  NonPreloadRoomState,
  RoomAccountData,
  EventData,
  TimelineFragmentData,
  RoomMembers
])
class MatrixSdkDriftDBImplementation extends _$MatrixSdkDriftDBImplementation {
  MatrixSdkDriftDBImplementation(super.e);

  @override
  int get schemaVersion => 1;
}
