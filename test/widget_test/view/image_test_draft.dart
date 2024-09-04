// For when we make a provider for cached images
/*import 'package:wordpress_flutter_app/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockDefaultCacheManager extends Mock implements DefaultCacheManager {}

void main() {
  group('Test error image', () {
    testWidgets('post cell', (tester) async {
      final mockCacheManager = MockDefaultCacheManager();

      when(() => mockCacheManager.getImageFile(any())).thenThrow(Exception());

      await tester.pumpApp(const App());
      await tester.tap(find.byKey(homeIconKey));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.cloud_off), findsOneWidget);
    });
    testWidgets('post detail view', (tester) async {
      final mockCacheManager = MockDefaultCacheManager();

      when(() => mockCacheManager.getImageFile(any())).thenThrow(Exception());

      await tester.pumpApp(const App());
      await tester.tap(find.byKey(homeIconKey));
      await tester.pumpAndSettle();

      await tester.tap(find.text());
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.cloud_off), findsOneWidget);

      // Exit Details screen
      await tester.pageBack();
      await tester.pumpAndSettle();
    });
  });
}
*/
