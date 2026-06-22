import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gordon_ferguson_app/app/config/provider_retry.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/favorites_repository.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:gordon_ferguson_app/app/features/settings/data/shared_preferences.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/misc.dart';

import '../data/test_data.dart';
import 'mocks.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget, {List<Override>? overrides}) {
    final sharedPreferences = MockSharedPreferences();

    overrides ??= [
      getPostsProvider.overrideWith((ref, argument) async => Future.value(mockPostResponse)),
      favoriteListProvider.overrideWith((ref) => Stream.value(mockPosts)),
      sharedPreferencesProvider.overrideWith((ref) => Future.value(sharedPreferences)),
    ];

    return pumpWidget(ProviderScope(retry: noProviderRetry, overrides: overrides, child: widget));
  }
}
