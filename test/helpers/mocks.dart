import 'dart:async';

import 'package:gordon_ferguson_app/app/features/posts/data/database/database.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockPostClient extends Mock implements WordpressClient {}

class MockSharedPreferences extends Mock implements SharedPreferences {
  final Map<String, double?> data = Map<String, double?>();

  @override
  double? getDouble(String key) {
    return data.containsKey(key) ? data[key] : null;
  }

  @override
  Future<bool> setDouble(String key, double value) {
    data[key] = value;
    return Future.value(true);
  }
}

class MockDatabase extends Mock implements WpaDatabase {
  final List<FavoritePost> favorites = List.empty(growable: true);
  final StreamController<List<FavoritePost>> favoritesController =
      StreamController<List<FavoritePost>>();

  MockDatabase() {
    favorites.clear();
    favoritesController.add(favorites);
  }

  @override
  Stream<List<FavoritePost>> watchPosts() => favoritesController.stream;
  @override
  Future<List<FavoritePost>> getPosts() => Future.value(favorites);

  void add(FavoritePost post) {
    favorites.add(post);
    favoritesController.add(favorites);
  }

  void remove(FavoritePost post) {
    favorites.remove(post);
    favoritesController.add(favorites);
  }

  @override
  Future<void> close() async {
    await favoritesController.close();
    reset(this);
  }
}
