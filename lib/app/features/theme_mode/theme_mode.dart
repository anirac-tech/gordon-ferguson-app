import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/features/settings/data/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  static const themeModeKey = "themeMode";

  @override
  ThemeMode build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return (prefs.valueOrNull?.getBool(themeModeKey) ?? true) ? ThemeMode.light : ThemeMode.dark;
  }

  Future<void> _save() async {
    final preferences = ref.read(sharedPreferencesProvider).requireValue;
    await preferences.setBool(themeModeKey, state == ThemeMode.light);
  }

  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _save();
  }
}
