import 'dart:io';
import 'package:wordpress_flutter_app/app/config/logger.dart';
import 'package:integration_test/integration_test_driver_extended.dart';
import 'package:flutter_driver/flutter_driver.dart';

Future<void> main() async {
  try {
    final FlutterDriver driver = await FlutterDriver.connect();
    await integrationDriver(
      driver: driver,
      onScreenshot: (screenshotName, screenshotBytes, [args]) async {
        final File image = await File('screenshots/$screenshotName.png').create(recursive: true);
        image.writeAsBytesSync(screenshotBytes);
        Log.d('Screen shot $screenshotName captured.');
        return true;
      },
    );
  } catch (e) {
    Log.e('$e', e);
  }
}
