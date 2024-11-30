import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:gordon_ferguson_app/env/flavor.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gordon_ferguson_app/firebase_options_prod.dart' as prod;

Future<void> initializeFirebaseApp() async {
  final flavor = getFlavor();
  if (flavor != Flavor.prod) return;

  try {
    await Firebase.initializeApp(
      options: prod.DefaultFirebaseOptions.currentPlatform,
    );
    await FirebaseAnalytics.instance.logAppOpen(
      parameters: {'app_flavor': '${flavor.name}'},
    );
    FlutterError.onError = (details) {
      Log.e(
        details.exceptionAsString(),
        details.exception,
        stackTrace: details.stack,
      );
      FirebaseCrashlytics.instance.recordFlutterError(details);
    };
  } catch (e) {
    Log.e(e.toString(), e);
  }
}
