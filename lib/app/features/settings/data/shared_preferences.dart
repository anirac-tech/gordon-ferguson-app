import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences.g.dart';

// Obtain shared preferences.
// coverage:ignore-start

class SharedPreferencesMigrator {
  final SharedPreferences oldPrefs;
  final SharedPreferencesWithCache newPrefs;
  SharedPreferencesMigrator({required this.oldPrefs, required this.newPrefs});

  static const didMigrateKey = "didMigrate";

  bool? get didMigrate => newPrefs.getBool(didMigrateKey);

  /// Reads all the values from [oldPrefs] and saves them to [newPrefs].
  Future<void> migrate() async {
    if (didMigrate ?? false) return;
    for (final key in oldPrefs.getKeys()) {
      final value = oldPrefs.get(key);
      switch (value) {
        case String s:
          await newPrefs.setString(key, s);
        case bool b:
          await newPrefs.setBool(key, b);
        case double d:
          await newPrefs.setDouble(key, d);
        case List<String> l:
          await newPrefs.setStringList(key, l);
        case int i:
          await newPrefs.setInt(key, i);
        default:
          Log.e("Error migrating prefs:", Exception("Tried to store unsupported value"));
      }
    }
    // Store that migration occurred
    newPrefs.setBool(didMigrateKey, true);
    Log.d("Migrated to SharedPreferencesWithCache successfully!");
  }
}

@Riverpod(keepAlive: true)
Future<SharedPreferencesWithCache> sharedPreferences(SharedPreferencesRef) async {
  final newPrefs = await SharedPreferencesWithCache.create(
    cacheOptions: SharedPreferencesWithCacheOptions(),
  );
  final oldPrefs = await SharedPreferences.getInstance();
  final migrator = SharedPreferencesMigrator(
    oldPrefs: oldPrefs,
    newPrefs: newPrefs,
  );
  await migrator.migrate();
  return newPrefs;
}
// coverage:ignore-end
