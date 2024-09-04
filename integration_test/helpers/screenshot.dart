import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

Future<void> takeScreenShot({
  required IntegrationTestWidgetsFlutterBinding binding,
  required WidgetTester tester,
  required String screenShotName,
}) async {
  if (kIsWeb) {
    await binding.takeScreenshot('web-$screenShotName');
    return;
  }
  await binding.convertFlutterSurfaceToImage();
  await tester.pumpAndSettle();

  if (Platform.isAndroid) {
    await binding.takeScreenshot('android-$screenShotName');
    return;
  }
  await binding.takeScreenshot('ios-$screenShotName');
}
