import 'package:gordon_ferguson_app/app/app.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/posts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../data/test_data.dart';
import '../helpers/helpers.dart';

void main() {
  group('Test Detail view', () {
    testWidgets('share', (tester) async {
      // Load app widget.
      await tester.pumpApp(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('${PostsView.name}_${mockPosts.first.id}')));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.share));
      await tester.pumpAndSettle();

      // Exit Details screen
      await tester.pageBack();
      await tester.pumpAndSettle();
    });
  });
}
