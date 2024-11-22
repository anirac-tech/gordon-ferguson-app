import 'package:gordon_ferguson_app/app/app.dart';
import 'package:gordon_ferguson_app/app/app_startup.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final Exception _exception = Exception('App failed to load');
void main() {
  group('Test App Startup', () {
    testWidgets('error', (tester) async {
      // Load app widget.
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            appStartupProvider.overrideWith((ref) => throw (_exception)),
          ],
          child: const App(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text(_exception.toString()), findsOneWidget);

      await tester.tap(find.text('Retry'));
      await tester.pumpAndSettle();

      expect(find.text('Retry'), findsOneWidget);
    });
  });
}
