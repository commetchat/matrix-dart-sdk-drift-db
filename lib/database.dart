import 'package:drift/drift.dart';
import 'package:matrix_dart_sdk_drift_db/schema/schema.dart';

part 'database.g.dart';

@DriftDatabase(tables: [TodoItems, TodoCategory])
class MatrixSdkDriftDBImplementation extends _$MatrixSdkDriftDBImplementation {
  MatrixSdkDriftDBImplementation(super.e);

  @override
  int get schemaVersion => 1;
}
