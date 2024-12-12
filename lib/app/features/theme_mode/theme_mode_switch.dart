import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/features/theme_mode/theme_mode.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeModeSwitch extends ConsumerWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeNotifierProvider);
    return Switch.adaptive(
      value: themeMode == ThemeMode.dark,
      onChanged: (value) => ref.read(themeModeNotifierProvider.notifier).toggleTheme(),
    );
  }
}
