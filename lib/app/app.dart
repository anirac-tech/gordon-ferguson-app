import 'package:gordon_ferguson_app/app/features/theme_mode/theme_mode.dart';
import 'package:gordon_ferguson_app/env/flavor.dart';
import 'package:gordon_ferguson_app/app/config/router.dart';
import 'package:gordon_ferguson_app/app/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final theme = ref.watch(themeProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);
    final appFlavor = getFlavor();
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: theme.lightPlatform,
      darkTheme: theme.darkPlatform,
      themeMode: themeMode,
      debugShowCheckedModeBanner: appFlavor != Flavor.prod,
    );
  }
}
