import 'package:gordon_ferguson_app/app/app.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/favorites_repository.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:gordon_ferguson_app/app/features/settings/data/shared_preferences.dart';
import 'package:gordon_ferguson_app/app/shared/navigation_icons.dart';
import 'package:gordon_ferguson_app/app/shared/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../data/test_data.dart';
import '../helpers/helpers.dart';

void main() {
  group('Test Launch URL', () {
    testWidgets('error', (tester) async {
      final exception = Exception('Could not launch url');
      // Load app widget.
      await tester.pumpApp(const App(), overrides: [
        getPostsProvider.overrideWith((ref) async => Future.value(mockPostResponse)),
        favoriteListProvider.overrideWith((ref) => Stream.value(mockPosts)),
        sharedPreferencesProvider.overrideWith((ref) => Future.value(MockSharedPreferences())),
        launchProvider.overrideWith((_) => throw (exception)),
      ]);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(aboutIconKey));
      await tester.pumpAndSettle();

      // For some reason double-tapping is required
      await tester.tapOnText(find.textRange.ofSubstring('Contact'));
      await tester.tapOnText(find.textRange.ofSubstring('Contact'));
      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);
      expect(find.text(exception.toString()), findsOneWidget);
    });
  });
}
