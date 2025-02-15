import 'dart:convert';

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
  int get schemaVersion => 4;

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

        if (from < 4) {
          await m.alterTable(TableMigration(nonPreloadRoomState, newColumns: [
            nonPreloadRoomState.stateKey
          ], columnTransformer: {
            nonPreloadRoomState.stateKey: const Constant("")
          }));

          await m.alterTable(TableMigration(preloadRoomState, newColumns: [
            preloadRoomState.stateKey
          ], columnTransformer: {
            preloadRoomState.stateKey: const Constant("")
          }));
        }
      },
      beforeOpen: (details) async {
        if (!details.hadUpgrade || details.versionBefore == null) {
          return;
        }

        if (details.versionBefore! < 4) {
          print("Migrating room state storage");
          await migrateNonPreloadRoomStatesStateKey();
          await migratePreloadRoomStatesStateKey();
          print("Finished migrating room state storage");
        }
      },
    );
  }

  Future<void> migratePreloadRoomStatesStateKey() async {
    var states = await (select(preloadRoomState)).get();
    await delete(preloadRoomState).go();
    for (var state in states) {
      var content = jsonDecode(state.content) as Map<String, dynamic>;
      for (var key in content.keys) {
        final stateKey = key;
        final stateBody = content[key];

        await into(preloadRoomState).insertOnConflictUpdate(
            PreloadRoomStateCompanion.insert(
                roomId: state.roomId,
                type: state.type,
                stateKey: stateKey,
                content: jsonEncode(stateBody)));
      }
    }
  }

  Future<void> migrateNonPreloadRoomStatesStateKey() async {
    var states = await (select(nonPreloadRoomState)).get();
    await delete(nonPreloadRoomState).go();
    for (var state in states) {
      var content = jsonDecode(state.content) as Map<String, dynamic>;
      for (var key in content.keys) {
        final stateKey = key;
        final stateBody = content[key];

        await into(nonPreloadRoomState).insertOnConflictUpdate(
            NonPreloadRoomStateCompanion.insert(
                roomId: state.roomId,
                type: state.type,
                stateKey: stateKey,
                content: jsonEncode(stateBody)));
      }
    }
  }
}
