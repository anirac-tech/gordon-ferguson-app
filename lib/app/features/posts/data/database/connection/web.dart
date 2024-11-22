import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/database/database.dart';
import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

WpaDatabase constructDb() {
  return WpaDatabase(connectOnWeb());
}

DatabaseConnection connectOnWeb() {
  return DatabaseConnection.delayed(Future(() async {
    final result = await WasmDatabase.open(
      databaseName: 'blacktaxandwhitebenefits_db',
      sqlite3Uri: Uri.parse('sqlite3.wasm'),
      driftWorkerUri: Uri.parse('drift_worker.dart.js'),
    );

    if (result.missingFeatures.isNotEmpty) {
      Log.w('Using ${result.chosenImplementation} due to missing browser '
          'features: ${result.missingFeatures}');
    }

    return result.resolvedExecutor;
  }));
}
