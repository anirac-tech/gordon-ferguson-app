import 'package:wordpress_flutter_app/app/app_startup.dart';
import 'package:wordpress_flutter_app/app/features/about/view/about_view.dart';
import 'package:wordpress_flutter_app/app/shared/home_screen.dart';
import 'package:wordpress_flutter_app/app/features/posts/domain/post.dart';
import 'package:wordpress_flutter_app/app/features/posts/view/screens/favorites_view.dart';
import 'package:wordpress_flutter_app/app/features/posts/view/screens/post_detail_view.dart';
import 'package:wordpress_flutter_app/app/features/posts/view/screens/posts_view.dart';
import 'package:wordpress_flutter_app/app/features/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

// Stateful navigation from
// https://codewithandrea.com/articles/flutter-bottom-navigation-bar-nested-routes-gorouter/

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'postsShell');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'favoritesShell');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'aboutShell');

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  final appStartupState = ref.watch(appStartupProvider);
  return GoRouter(
    initialLocation: PostsView.path,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      if (appStartupState.isLoading || appStartupState.hasError) {
        return AppStartupView.path;
      }

      final path = state.uri.path;

      if (path.startsWith(AppStartupView.path)) {
        return PostsView.path;
      }

      return null;
    },
    routes: [
      // Stateful navigation based on:
      // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
      StatefulShellRoute.indexedStack(
        builder: (_, __, navigationShell) {
          return HomeScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorAKey,
            routes: [
              // Posts View
              GoRoute(
                path: PostsView.path,
                name: PostsView.name,
                pageBuilder: (_, __) => const NoTransitionPage(
                  child: PostsView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBKey,
            routes: [
              // Favorites View
              GoRoute(
                path: FavoritesView.path,
                name: FavoritesView.name,
                pageBuilder: (_, __) => const NoTransitionPage(
                  child: FavoritesView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCKey,
            routes: [
              // About View
              GoRoute(
                path: AboutView.path,
                name: AboutView.name,
                pageBuilder: (_, __) => const NoTransitionPage(
                  child: AboutView(),
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: PostDetailView.path,
        name: PostDetailView.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (_, state) {
          Post post = state.extra as Post;
          return PostDetailView(post);
        },
      ),
      GoRoute(
        path: SettingsView.path,
        name: SettingsView.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (_, __) => SettingsView(),
      ),
      GoRoute(
        path: AppStartupView.path,
        name: AppStartupView.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => NoTransitionPage(
          child: AppStartupView(
            onLoaded: (_) => const SizedBox.shrink(),
          ),
        ),
      ),
    ],
  );
}
