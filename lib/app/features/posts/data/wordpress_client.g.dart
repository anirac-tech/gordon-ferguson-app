// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordpress_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _WordpressClient implements WordpressClient {
  _WordpressClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  }) {
    baseUrl ??= 'https://gordonferguson.org//wp-json/wp/v2/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<List<Post>>> getPosts(
    int page,
    CancelToken cancelToken, {
    int? category,
    bool embed = true,
    String? order,
    String? orderBy,
    int perPage = PAGE_SIZE,
    String? search,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'categories': category,
      r'_embed': embed,
      r'order': order,
      r'orderby': orderBy,
      r'per_page': perPage,
      r'search': search,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<List<Post>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/posts',
          queryParameters: queryParameters,
          data: _data,
          cancelToken: cancelToken,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Post> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Post.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<List<Category>> getCategories() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<List<Category>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/categories',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Category> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Category.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Post> getPost(int id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Post>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/posts/${id}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Post _value;
    try {
      _value = Post.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wordpressClientHash() => r'6a17d57c2be0a08fe26b545efa8d79b3d62d53f4';

/// See also [wordpressClient].
@ProviderFor(wordpressClient)
final wordpressClientProvider = AutoDisposeProvider<WordpressClient>.internal(
  wordpressClient,
  name: r'wordpressClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wordpressClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WordpressClientRef = AutoDisposeProviderRef<WordpressClient>;
String _$getPostsHash() => r'e08ba191780e23b72fd057e1611722903a33374a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getPosts].
@ProviderFor(getPosts)
const getPostsProvider = GetPostsFamily();

/// See also [getPosts].
class GetPostsFamily extends Family {
  /// See also [getPosts].
  const GetPostsFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPostsProvider';

  /// See also [getPosts].
  GetPostsProvider call({
    required int page,
    int? category,
    String? search,
    String? order,
    String? orderBy,
  }) {
    return GetPostsProvider(
      page: page,
      category: category,
      search: search,
      order: order,
      orderBy: orderBy,
    );
  }

  @visibleForOverriding
  @override
  GetPostsProvider getProviderOverride(
    covariant GetPostsProvider provider,
  ) {
    return call(
      page: provider.page,
      category: provider.category,
      search: provider.search,
      order: provider.order,
      orderBy: provider.orderBy,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<PostResponse> Function(GetPostsRef ref) create) {
    return _$GetPostsFamilyOverride(this, create);
  }
}

class _$GetPostsFamilyOverride implements FamilyOverride {
  _$GetPostsFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<PostResponse> Function(GetPostsRef ref) create;

  @override
  final GetPostsFamily overriddenFamily;

  @override
  GetPostsProvider getProviderOverride(
    covariant GetPostsProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [getPosts].
class GetPostsProvider extends AutoDisposeFutureProvider<PostResponse> {
  /// See also [getPosts].
  GetPostsProvider({
    required int page,
    int? category,
    String? search,
    String? order,
    String? orderBy,
  }) : this._internal(
          (ref) => getPosts(
            ref as GetPostsRef,
            page: page,
            category: category,
            search: search,
            order: order,
            orderBy: orderBy,
          ),
          from: getPostsProvider,
          name: r'getPostsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPostsHash,
          dependencies: GetPostsFamily._dependencies,
          allTransitiveDependencies: GetPostsFamily._allTransitiveDependencies,
          page: page,
          category: category,
          search: search,
          order: order,
          orderBy: orderBy,
        );

  GetPostsProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.category,
    required this.search,
    required this.order,
    required this.orderBy,
  }) : super.internal();

  final int page;
  final int? category;
  final String? search;
  final String? order;
  final String? orderBy;

  @override
  Override overrideWith(
    FutureOr<PostResponse> Function(GetPostsRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPostsProvider._internal(
        (ref) => create(ref as GetPostsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        category: category,
        search: search,
        order: order,
        orderBy: orderBy,
      ),
    );
  }

  @override
  ({
    int page,
    int? category,
    String? search,
    String? order,
    String? orderBy,
  }) get argument {
    return (
      page: page,
      category: category,
      search: search,
      order: order,
      orderBy: orderBy,
    );
  }

  @override
  AutoDisposeFutureProviderElement<PostResponse> createElement() {
    return _GetPostsProviderElement(this);
  }

  GetPostsProvider _copyWith(
    FutureOr<PostResponse> Function(GetPostsRef ref) create,
  ) {
    return GetPostsProvider._internal(
      (ref) => create(ref as GetPostsRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      page: page,
      category: category,
      search: search,
      order: order,
      orderBy: orderBy,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostsProvider &&
        other.page == page &&
        other.category == category &&
        other.search == search &&
        other.order == order &&
        other.orderBy == orderBy;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);
    hash = _SystemHash.combine(hash, order.hashCode);
    hash = _SystemHash.combine(hash, orderBy.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPostsRef on AutoDisposeFutureProviderRef<PostResponse> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `category` of this provider.
  int? get category;

  /// The parameter `search` of this provider.
  String? get search;

  /// The parameter `order` of this provider.
  String? get order;

  /// The parameter `orderBy` of this provider.
  String? get orderBy;
}

class _GetPostsProviderElement
    extends AutoDisposeFutureProviderElement<PostResponse> with GetPostsRef {
  _GetPostsProviderElement(super.provider);

  @override
  int get page => (origin as GetPostsProvider).page;
  @override
  int? get category => (origin as GetPostsProvider).category;
  @override
  String? get search => (origin as GetPostsProvider).search;
  @override
  String? get order => (origin as GetPostsProvider).order;
  @override
  String? get orderBy => (origin as GetPostsProvider).orderBy;
}

String _$getPostHash() => r'f7b4c3c9bc8302b219db7e3391bb76ef6967308e';

/// See also [getPost].
@ProviderFor(getPost)
const getPostProvider = GetPostFamily();

/// See also [getPost].
class GetPostFamily extends Family {
  /// See also [getPost].
  const GetPostFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPostProvider';

  /// See also [getPost].
  GetPostProvider call({
    required int id,
  }) {
    return GetPostProvider(
      id: id,
    );
  }

  @visibleForOverriding
  @override
  GetPostProvider getProviderOverride(
    covariant GetPostProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(FutureOr<Post> Function(GetPostRef ref) create) {
    return _$GetPostFamilyOverride(this, create);
  }
}

class _$GetPostFamilyOverride implements FamilyOverride {
  _$GetPostFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<Post> Function(GetPostRef ref) create;

  @override
  final GetPostFamily overriddenFamily;

  @override
  GetPostProvider getProviderOverride(
    covariant GetPostProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [getPost].
class GetPostProvider extends AutoDisposeFutureProvider<Post> {
  /// See also [getPost].
  GetPostProvider({
    required int id,
  }) : this._internal(
          (ref) => getPost(
            ref as GetPostRef,
            id: id,
          ),
          from: getPostProvider,
          name: r'getPostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPostHash,
          dependencies: GetPostFamily._dependencies,
          allTransitiveDependencies: GetPostFamily._allTransitiveDependencies,
          id: id,
        );

  GetPostProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Post> Function(GetPostRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPostProvider._internal(
        (ref) => create(ref as GetPostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  ({
    int id,
  }) get argument {
    return (id: id,);
  }

  @override
  AutoDisposeFutureProviderElement<Post> createElement() {
    return _GetPostProviderElement(this);
  }

  GetPostProvider _copyWith(
    FutureOr<Post> Function(GetPostRef ref) create,
  ) {
    return GetPostProvider._internal(
      (ref) => create(ref as GetPostRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      id: id,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPostRef on AutoDisposeFutureProviderRef<Post> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetPostProviderElement extends AutoDisposeFutureProviderElement<Post>
    with GetPostRef {
  _GetPostProviderElement(super.provider);

  @override
  int get id => (origin as GetPostProvider).id;
}

String _$getCategoriesHash() => r'b7088aab0649bc38dc1f0b4d306f28bf4a9e2c18';

/// See also [getCategories].
@ProviderFor(getCategories)
final getCategoriesProvider =
    AutoDisposeFutureProvider<List<Category>>.internal(
  getCategories,
  name: r'getCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCategoriesRef = AutoDisposeFutureProviderRef<List<Category>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
