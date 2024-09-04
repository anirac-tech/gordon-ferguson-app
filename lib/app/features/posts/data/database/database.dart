import 'package:wordpress_flutter_app/app/features/posts/data/database/connection/connection.dart';
import 'package:wordpress_flutter_app/app/features/posts/domain/post.dart';
import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database.g.dart';

//coverage:ignore-start
class FavoritePosts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get post => text().unique().map(Post.converter)();
}

@DriftDatabase(tables: [FavoritePosts])
class WpaDatabase extends _$WpaDatabase {
  WpaDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  Stream<List<FavoritePost>> watchPosts() => select(favoritePosts).watch();
  Future<List<FavoritePost>> getPosts() async => await select(favoritePosts).get();

  Future<int> insertFavoritePost(FavoritePostsCompanion entry) => into(favoritePosts).insert(entry);

  Future<int> deleteFavoritePost(int entryId) =>
      (delete(favoritePosts)..where((t) => t.id.equals(entryId))).go();
}

@Riverpod(keepAlive: true)
WpaDatabase database(DatabaseRef _) => constructDb();

//coverage:ignore-end
