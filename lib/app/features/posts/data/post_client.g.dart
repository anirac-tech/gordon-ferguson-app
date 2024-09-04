// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _PostClient implements PostClient {
  _PostClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  }) {
    baseUrl ??= 'https://www.nasa.gov//wp-json/wp/v2/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<List<Post>>> getPosts(
    int page,
    CancelToken cancelToken, {
    bool embed = true,
    int perPage = PAGE_SIZE,
    String? order,
    String? orderBy,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'_embed': embed,
      r'per_page': perPage,
      r'order': order,
      r'orderby': orderBy,
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

String _$postClientHash() => r'1cb22ed93a34b0ff4fa5151e3f4e92cadde3e846';

/// See also [postClient].
@ProviderFor(postClient)
final postClientProvider = AutoDisposeProvider<PostClient>.internal(
  postClient,
  name: r'postClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$postClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PostClientRef = AutoDisposeProviderRef<PostClient>;
String _$getPostsHash() => r'2b9fbc2d054da8728bc6cf9892b46e17c6c3db1e';

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
  GetPostsProvider call(
    PostQueryData postQueryData,
  ) {
    return GetPostsProvider(
      postQueryData,
    );
  }

  @visibleForOverriding
  @override
  GetPostsProvider getProviderOverride(
    covariant GetPostsProvider provider,
  ) {
    return call(
      provider.postQueryData,
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
  GetPostsProvider(
    PostQueryData postQueryData,
  ) : this._internal(
          (ref) => getPosts(
            ref as GetPostsRef,
            postQueryData,
          ),
          from: getPostsProvider,
          name: r'getPostsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPostsHash,
          dependencies: GetPostsFamily._dependencies,
          allTransitiveDependencies: GetPostsFamily._allTransitiveDependencies,
          postQueryData: postQueryData,
        );

  GetPostsProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postQueryData,
  }) : super.internal();

  final PostQueryData postQueryData;

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
        postQueryData: postQueryData,
      ),
    );
  }

  @override
  (PostQueryData,) get argument {
    return (postQueryData,);
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
      postQueryData: postQueryData,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostsProvider && other.postQueryData == postQueryData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postQueryData.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPostsRef on AutoDisposeFutureProviderRef<PostResponse> {
  /// The parameter `postQueryData` of this provider.
  PostQueryData get postQueryData;
}

class _GetPostsProviderElement
    extends AutoDisposeFutureProviderElement<PostResponse> with GetPostsRef {
  _GetPostsProviderElement(super.provider);

  @override
  PostQueryData get postQueryData => (origin as GetPostsProvider).postQueryData;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
