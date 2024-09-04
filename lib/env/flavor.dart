import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

enum Flavor { dev, stg, prod }

Flavor getFlavor() {
  if (kIsWeb && kReleaseMode) {
    return Flavor.prod; // --flavor is not supported on web
  }
  return switch (appFlavor) {
    'production' => Flavor.prod,
    'staging' => Flavor.stg,
    'development' => Flavor.dev,
    null => Flavor.dev, // * if not specified, default to dev
    _ => throw UnsupportedError('Invalid flavor: $appFlavor'), //coverage:ignore-line
  };
}
