import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences.g.dart';

// Obtain shared preferences.
// coverage:ignore-start
@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(SharedPreferencesRef) async =>
    await SharedPreferences.getInstance();
// coverage:ignore-end
