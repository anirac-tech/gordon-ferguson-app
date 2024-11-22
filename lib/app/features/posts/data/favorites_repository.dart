import 'package:gordon_ferguson_app/app/config/log_manager.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/database/database.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_repository.g.dart';

class FavoritesRepository {
  const FavoritesRepository({
    required this.database,
    required this.log,
  });

  final WpaDatabase database;
  final LogManager log;

  Future<int> addFavorite(Post post) async {
    log.logEvent(name: 'add_favorite', parameters: {'post': post.id});
    try {
      return database.insertFavoritePost(FavoritePostsCompanion.insert(post: post));
    } catch (e) {
      log.e(e.toString(), e);
      return -1;
    }
  }

  Future<int> removeFavorite(Post post) async {
    log.logEvent(name: 'remove_favorite', parameters: {'post': post.id});
    try {
      final row = (await database.getPosts()).firstWhere((element) => element.post == post);
      return database.deleteFavoritePost(row.id);
    } catch (e) {
      log.e(e.toString(), e);
      return -1;
    }
  }
}

@riverpod
FavoritesRepository favoritesRepository(FavoritesRepositoryRef ref) {
  final WpaDatabase database = ref.watch(databaseProvider);
  final LogManager logManager = ref.watch(logManagerProvider);
  return FavoritesRepository(database: database, log: logManager);
}

@Riverpod(keepAlive: true)
Stream<List<Post>> favoriteList(FavoriteListRef ref) {
  final WpaDatabase database = ref.watch(databaseProvider);

  return database.watchPosts().map((entry) => entry.map((element) => element.post).toList());
}
