import 'package:gordon_ferguson_app/app/app.dart';
import 'package:gordon_ferguson_app/app/features/settings/settings_icon_button.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/helpers.dart';

void main() {
  group('Test Settings view', () {
    testWidgets('open view', (tester) async {
      // Load app widget.
      await tester.pumpApp(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byType(SettingsIconButton));
      await tester.pumpAndSettle();

      // Exit Settings screen
      await tester.pageBack();
      await tester.pumpAndSettle();
    });
  });
}
