// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordpress_client.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main,avoid_redundant_argument_values

class _WordpressClient implements WordpressClient {
  _WordpressClient(this._dio, {this.baseUrl, this.errorLogger}) {
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
    final _options = _setStreamType<HttpResponse<List<Post>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/posts',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Post> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Post.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
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
    final _options = _setStreamType<List<Category>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/categories',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Category> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Category.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
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
    final _options = _setStreamType<Post>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/posts/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late Post _value;
    try {
      _value = Post.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
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

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
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

// dart format on

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(wordpressClient)
final wordpressClientProvider = WordpressClientProvider._();

final class WordpressClientProvider
    extends
        $FunctionalProvider<WordpressClient, WordpressClient, WordpressClient>
    with $Provider<WordpressClient> {
  WordpressClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wordpressClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wordpressClientHash();

  @$internal
  @override
  $ProviderElement<WordpressClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WordpressClient create(Ref ref) {
    return wordpressClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WordpressClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WordpressClient>(value),
    );
  }
}

String _$wordpressClientHash() => r'6a17d57c2be0a08fe26b545efa8d79b3d62d53f4';

@ProviderFor(getPosts)
final getPostsProvider = GetPostsFamily._();

final class GetPostsProvider
    extends
        $FunctionalProvider<
          AsyncValue<PostResponse>,
          PostResponse,
          FutureOr<PostResponse>
        >
    with $FutureModifier<PostResponse>, $FutureProvider<PostResponse> {
  GetPostsProvider._({
    required GetPostsFamily super.from,
    required ({
      int page,
      int? category,
      String? search,
      String? order,
      String? orderBy,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'getPostsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getPostsHash();

  @override
  String toString() {
    return r'getPostsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PostResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PostResponse> create(Ref ref) {
    final argument =
        this.argument
            as ({
              int page,
              int? category,
              String? search,
              String? order,
              String? orderBy,
            });
    return getPosts(
      ref,
      page: argument.page,
      category: argument.category,
      search: argument.search,
      order: argument.order,
      orderBy: argument.orderBy,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getPostsHash() => r'cf3039a53825b3af5034f85cf91c9532d4e9ce1e';

final class GetPostsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<PostResponse>,
          ({
            int page,
            int? category,
            String? search,
            String? order,
            String? orderBy,
          })
        > {
  GetPostsFamily._()
    : super(
        retry: null,
        name: r'getPostsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetPostsProvider call({
    required int page,
    int? category,
    String? search,
    String? order,
    String? orderBy,
  }) => GetPostsProvider._(
    argument: (
      page: page,
      category: category,
      search: search,
      order: order,
      orderBy: orderBy,
    ),
    from: this,
  );

  @override
  String toString() => r'getPostsProvider';
}

@ProviderFor(getPost)
final getPostProvider = GetPostFamily._();

final class GetPostProvider
    extends $FunctionalProvider<AsyncValue<Post>, Post, FutureOr<Post>>
    with $FutureModifier<Post>, $FutureProvider<Post> {
  GetPostProvider._({
    required GetPostFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'getPostProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getPostHash();

  @override
  String toString() {
    return r'getPostProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Post> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Post> create(Ref ref) {
    final argument = this.argument as int;
    return getPost(ref, id: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getPostHash() => r'6760a458cadbf584082a4f9c278a8a33a436badd';

final class GetPostFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Post>, int> {
  GetPostFamily._()
    : super(
        retry: null,
        name: r'getPostProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetPostProvider call({required int id}) =>
      GetPostProvider._(argument: id, from: this);

  @override
  String toString() => r'getPostProvider';
}

@ProviderFor(getCategories)
final getCategoriesProvider = GetCategoriesProvider._();

final class GetCategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Category>>,
          List<Category>,
          FutureOr<List<Category>>
        >
    with $FutureModifier<List<Category>>, $FutureProvider<List<Category>> {
  GetCategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCategoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCategoriesHash();

  @$internal
  @override
  $FutureProviderElement<List<Category>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Category>> create(Ref ref) {
    return getCategories(ref);
  }
}

String _$getCategoriesHash() => r'f8d2d056a7e43fcbcb8d77ffeadfcde3a31ac800';
