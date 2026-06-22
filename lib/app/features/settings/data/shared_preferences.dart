import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences.g.dart';

// Obtain shared preferences.
// coverage:ignore-start

class SharedPreferencesMigrator {
  SharedPreferencesMigrator({required this.oldPrefs, required this.newPrefs});
  final SharedPreferences oldPrefs;
  final SharedPreferencesWithCache newPrefs;

  static const didMigrateKey = 'didMigrate';

  bool? get didMigrate => newPrefs.getBool(didMigrateKey);

  /// Reads all the values from [oldPrefs] and saves them to [newPrefs].
  Future<void> migrate() async {
    if (didMigrate ?? false) return;
    for (final key in oldPrefs.getKeys()) {
      final value = oldPrefs.get(key);
      switch (value) {
        case final String s:
          await newPrefs.setString(key, s);
        case final bool b:
          await newPrefs.setBool(key, b);
        case final double d:
          await newPrefs.setDouble(key, d);
        case final List<String> l:
          await newPrefs.setStringList(key, l);
        case final int i:
          await newPrefs.setInt(key, i);
        default:
          Log.e('Error migrating prefs:', Exception('Tried to store unsupported value'));
      }
    }
    // Store that migration occurred
    await newPrefs.setBool(didMigrateKey, true);
    Log.d('Migrated to SharedPreferencesWithCache successfully!');
  }
}

@Riverpod(keepAlive: true)
Future<SharedPreferencesWithCache> sharedPreferences(Ref ref) async {
  final newPrefs = await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(),
  );
  final oldPrefs = await SharedPreferences.getInstance();
  final migrator = SharedPreferencesMigrator(oldPrefs: oldPrefs, newPrefs: newPrefs);
  await migrator.migrate();
  return newPrefs;
}

// coverage:ignore-end
