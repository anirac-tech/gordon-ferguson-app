import 'package:gordon_ferguson_app/app/app_startup.dart';
import 'package:gordon_ferguson_app/app/features/about/view/about_view.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/categories_view.dart';
import 'package:gordon_ferguson_app/app/shared/home_screen.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/favorites_view.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/post_detail_view.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/posts_view.dart';
import 'package:gordon_ferguson_app/app/features/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

// Stateful navigation from
// https://codewithandrea.com/articles/flutter-bottom-navigation-bar-nested-routes-gorouter/

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellKeyPosts = GlobalKey<NavigatorState>(debugLabel: 'postsShell');
final _shellKeyCategories = GlobalKey<NavigatorState>(debugLabel: 'categoriesShell');
final _shellKeyFavorites = GlobalKey<NavigatorState>(debugLabel: 'favoritesShell');
final _shellKeyAbout = GlobalKey<NavigatorState>(debugLabel: 'aboutShell');

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
            navigatorKey: _shellKeyPosts,
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
            navigatorKey: _shellKeyCategories,
            routes: [
              // Posts View
              GoRoute(
                path: CategoriesView.path,
                name: CategoriesView.name,
                pageBuilder: (_, __) => const NoTransitionPage(
                  child: CategoriesView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellKeyFavorites,
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
            navigatorKey: _shellKeyAbout,
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
