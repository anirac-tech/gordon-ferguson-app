import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  try {
    final driver = await FlutterDriver.connect();
    await integrationDriver(
      driver: driver,
      onScreenshot: (screenshotName, screenshotBytes, [args]) async {
        final image = await File('screenshots/$screenshotName.png').create(recursive: true);
        image.writeAsBytesSync(screenshotBytes);
        Log.d('Screen shot $screenshotName captured.');
        return true;
      },
    );
  } catch (e) {
    Log.e('$e', e);
  }
}
