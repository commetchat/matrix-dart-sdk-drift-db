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
  RoomMembers,
  InboundGroupSession,
  OutboundGroupSessionData,
  SSSSCacheData,
  OlmSessionData,
  SeenDeviceId,
  SeenPublicKey,
  UserDeviceKey,
  UserDeviceKeyInfo,
  UserCrossSigningKey,
  PresenceData,
  CachedProfileData,
])
class MatrixSdkDriftDBImplementation extends _$MatrixSdkDriftDBImplementation {
  MatrixSdkDriftDBImplementation(super.e);

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          await m.createTable(cachedProfileData);
        }

        if (from < 3) {
          await m.addColumn(clientData, clientData.wellKnown);
        }
      },
    );
  }
}
