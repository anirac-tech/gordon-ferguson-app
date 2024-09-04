import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

class WpaTheme {
  const WpaTheme({
    required this.platform,
  });

  final TargetPlatform platform;

  static final light = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.lightBlue,
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.lightBlue,
    ),
  );

  ThemeData get lightPlatform => light.copyWith(platform: platform);

  ThemeData get darkPlatform => dark.copyWith(platform: platform);
}

@Riverpod(keepAlive: true)
WpaTheme theme(ThemeRef ref) {
  final platform = kIsWeb
      ? TargetPlatform.android
      : Platform.isIOS
          ? TargetPlatform.iOS
          : TargetPlatform.android;
  return WpaTheme(platform: platform);
}
