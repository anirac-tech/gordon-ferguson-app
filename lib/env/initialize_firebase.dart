// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:gordon_ferguson_app/env/flavor.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gordon_ferguson_app/firebase_options_dev.dart' as dev;
import 'package:gordon_ferguson_app/firebase_options_stg.dart' as stg;
import 'package:gordon_ferguson_app/firebase_options_prod.dart' as prod;

Future<void> initializeFirebaseApp() async {
  final flavor = getFlavor();
  final firebaseOptions = switch (flavor) {
    Flavor.prod => prod.DefaultFirebaseOptions.currentPlatform,
    Flavor.stg => stg.DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };

  try {
    await Firebase.initializeApp(
      options: firebaseOptions,
    );
    // await FirebaseAnalytics.instance.logAppOpen(
    //   parameters: {'app_flavor': '${flavor.name}'},
    // );
    // FlutterError.onError = (details) {
    //   Log.e(
    //     details.exceptionAsString(),
    //     details.exception,
    //     stackTrace: details.stack,
    //   );
    //   FirebaseCrashlytics.instance.recordFlutterError(details);
    // };
  } catch (e) {
    Log.e(e.toString(), e);
  }
}
