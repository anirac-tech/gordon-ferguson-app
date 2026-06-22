// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FavoritePostsTable extends FavoritePosts
    with TableInfo<$FavoritePostsTable, FavoritePost> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritePostsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  @override
  late final GeneratedColumnWithTypeConverter<Post, String> post =
      GeneratedColumn<String>(
        'post',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
        defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
      ).withConverter<Post>($FavoritePostsTable.$converterpost);
  @override
  List<GeneratedColumn> get $columns => [id, post];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_posts';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoritePost> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoritePost map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoritePost(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      post: $FavoritePostsTable.$converterpost.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}post'],
        )!,
      ),
    );
  }

  @override
  $FavoritePostsTable createAlias(String alias) {
    return $FavoritePostsTable(attachedDatabase, alias);
  }

  static TypeConverter<Post, String> $converterpost = Post.converter;
}

class FavoritePost extends DataClass implements Insertable<FavoritePost> {
  final int id;
  final Post post;
  const FavoritePost({required this.id, required this.post});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['post'] = Variable<String>(
        $FavoritePostsTable.$converterpost.toSql(post),
      );
    }
    return map;
  }

  FavoritePostsCompanion toCompanion(bool nullToAbsent) {
    return FavoritePostsCompanion(id: Value(id), post: Value(post));
  }

  factory FavoritePost.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoritePost(
      id: serializer.fromJson<int>(json['id']),
      post: serializer.fromJson<Post>(json['post']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'post': serializer.toJson<Post>(post),
    };
  }

  FavoritePost copyWith({int? id, Post? post}) =>
      FavoritePost(id: id ?? this.id, post: post ?? this.post);
  FavoritePost copyWithCompanion(FavoritePostsCompanion data) {
    return FavoritePost(
      id: data.id.present ? data.id.value : this.id,
      post: data.post.present ? data.post.value : this.post,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoritePost(')
          ..write('id: $id, ')
          ..write('post: $post')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, post);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoritePost && other.id == this.id && other.post == this.post);
}

class FavoritePostsCompanion extends UpdateCompanion<FavoritePost> {
  final Value<int> id;
  final Value<Post> post;
  const FavoritePostsCompanion({
    this.id = const Value.absent(),
    this.post = const Value.absent(),
  });
  FavoritePostsCompanion.insert({
    this.id = const Value.absent(),
    required Post post,
  }) : post = Value(post);
  static Insertable<FavoritePost> custom({
    Expression<int>? id,
    Expression<String>? post,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (post != null) 'post': post,
    });
  }

  FavoritePostsCompanion copyWith({Value<int>? id, Value<Post>? post}) {
    return FavoritePostsCompanion(id: id ?? this.id, post: post ?? this.post);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (post.present) {
      map['post'] = Variable<String>(
        $FavoritePostsTable.$converterpost.toSql(post.value),
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritePostsCompanion(')
          ..write('id: $id, ')
          ..write('post: $post')
          ..write(')'))
        .toString();
  }
}

abstract class _$WpaDatabase extends GeneratedDatabase {
  _$WpaDatabase(QueryExecutor e) : super(e);
  $WpaDatabaseManager get managers => $WpaDatabaseManager(this);
  late final $FavoritePostsTable favoritePosts = $FavoritePostsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoritePosts];
}

typedef $$FavoritePostsTableCreateCompanionBuilder =
    FavoritePostsCompanion Function({Value<int> id, required Post post});
typedef $$FavoritePostsTableUpdateCompanionBuilder =
    FavoritePostsCompanion Function({Value<int> id, Value<Post> post});

class $$FavoritePostsTableFilterComposer
    extends Composer<_$WpaDatabase, $FavoritePostsTable> {
  $$FavoritePostsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<Post, Post, String> get post =>
      $composableBuilder(
        column: $table.post,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );
}

class $$FavoritePostsTableOrderingComposer
    extends Composer<_$WpaDatabase, $FavoritePostsTable> {
  $$FavoritePostsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get post => $composableBuilder(
    column: $table.post,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FavoritePostsTableAnnotationComposer
    extends Composer<_$WpaDatabase, $FavoritePostsTable> {
  $$FavoritePostsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Post, String> get post =>
      $composableBuilder(column: $table.post, builder: (column) => column);
}

class $$FavoritePostsTableTableManager
    extends
        RootTableManager<
          _$WpaDatabase,
          $FavoritePostsTable,
          FavoritePost,
          $$FavoritePostsTableFilterComposer,
          $$FavoritePostsTableOrderingComposer,
          $$FavoritePostsTableAnnotationComposer,
          $$FavoritePostsTableCreateCompanionBuilder,
          $$FavoritePostsTableUpdateCompanionBuilder,
          (
            FavoritePost,
            BaseReferences<_$WpaDatabase, $FavoritePostsTable, FavoritePost>,
          ),
          FavoritePost,
          PrefetchHooks Function()
        > {
  $$FavoritePostsTableTableManager(_$WpaDatabase db, $FavoritePostsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritePostsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritePostsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritePostsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<Post> post = const Value.absent(),
              }) => FavoritePostsCompanion(id: id, post: post),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required Post post}) =>
                  FavoritePostsCompanion.insert(id: id, post: post),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FavoritePostsTableProcessedTableManager =
    ProcessedTableManager<
      _$WpaDatabase,
      $FavoritePostsTable,
      FavoritePost,
      $$FavoritePostsTableFilterComposer,
      $$FavoritePostsTableOrderingComposer,
      $$FavoritePostsTableAnnotationComposer,
      $$FavoritePostsTableCreateCompanionBuilder,
      $$FavoritePostsTableUpdateCompanionBuilder,
      (
        FavoritePost,
        BaseReferences<_$WpaDatabase, $FavoritePostsTable, FavoritePost>,
      ),
      FavoritePost,
      PrefetchHooks Function()
    >;

class $WpaDatabaseManager {
  final _$WpaDatabase _db;
  $WpaDatabaseManager(this._db);
  $$FavoritePostsTableTableManager get favoritePosts =>
      $$FavoritePostsTableTableManager(_db, _db.favoritePosts);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(database)
final databaseProvider = DatabaseProvider._();

final class DatabaseProvider
    extends $FunctionalProvider<WpaDatabase, WpaDatabase, WpaDatabase>
    with $Provider<WpaDatabase> {
  DatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'databaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$databaseHash();

  @$internal
  @override
  $ProviderElement<WpaDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WpaDatabase create(Ref ref) {
    return database(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WpaDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WpaDatabase>(value),
    );
  }
}

String _$databaseHash() => r'b604570d2e72f1303803157a930c90c44d3a0a93';
