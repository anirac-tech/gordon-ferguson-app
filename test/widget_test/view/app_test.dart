import 'package:wordpress_flutter_app/SETUP.dart';
import 'package:wordpress_flutter_app/app/app.dart';
import 'package:wordpress_flutter_app/app/features/posts/view/screens/posts_view.dart';
import 'package:wordpress_flutter_app/app/shared/navigation_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../data/test_data.dart';
import '../../helpers/helpers.dart';

void main() {
  group('Test Screen Visibility', () {
    testWidgets('Home', (tester) async {
      // Load app widget.
      await tester.pumpApp(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(homeIconKey));
      await tester.pumpAndSettle();

      expect(find.text(BLOG_TITLE), findsOneWidget);
    });
    testWidgets('Favorites', (tester) async {
      // Load app widget.
      await tester.pumpApp(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(favoritesIconKey));
      await tester.pumpAndSettle();

      expect(find.text('Favorites'), findsAny);
    });
    testWidgets('About', (tester) async {
      // Load app widget.
      await tester.pumpApp(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(aboutIconKey));
      await tester.pumpAndSettle();

      expect(find.text('About'), findsAny);
    });
    testWidgets('Detail', (tester) async {
      // Load app widget.
      await tester.pumpApp(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('${PostsView.name}_${mockPosts.last.id}')));
      await tester.pumpAndSettle();

      expect(find.text('Post Details'), findsOneWidget);

      // Exit Details screen
      await tester.pageBack();
      await tester.pumpAndSettle();
    });
  });
  group('Smaller Device', () {
    testWidgets("navigation", (tester) async {
      tester.view.physicalSize = Size(300, 900);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpApp(const App());
      await tester.pumpAndSettle();
      // View Home Screen
      await tester.tap(find.byKey(homeIconKey));
      await tester.pumpAndSettle();

      expect(find.text(BLOG_TITLE), findsOneWidget);

      // View Favorites screen
      await tester.tap(find.byKey(favoritesIconKey));
      await tester.pumpAndSettle();

      expect(find.text('Favorites'), findsAny);

      // View About screen
      await tester.tap(find.byKey(aboutIconKey));
      await tester.pumpAndSettle();

      expect(find.text('About'), findsAny);
    });
  });
}
