import 'package:file/local.dart';
import 'package:matrix/matrix.dart';
import 'package:matrix_dart_sdk_drift_db/matrix_dart_sdk_drift_db.dart';

Future<MatrixSdkDriftDatabase> getDatabase(Client? c) async {
  final tempPath = await const LocalFileSystem()
      .systemTempDirectory
      .createTemp('dart-sdk-tests-database');

  return MatrixSdkDriftDatabase.init(tempPath.path, "test");
}
