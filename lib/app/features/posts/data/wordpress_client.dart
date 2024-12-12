import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gordon_ferguson_app/SETUP.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/category.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wordpress_client.g.dart';

@RestApi(baseUrl: '$WORDPRESS_URL/wp-json/wp/v2/')
abstract class WordpressClient {
  factory WordpressClient(Dio dio, {String baseUrl}) = _WordpressClient;

  static const postTimeout = Duration(minutes: 2);

  @GET('/posts')
  Future<HttpResponse<List<Post>>> getPosts(
    @Query('page') int page,
    @CancelRequest() CancelToken cancelToken, {
    @Query('categories') int? category,
    @Query('_embed') bool embed = true,
    @Query('order') String? order,
    @Query('orderby') String? orderBy,
    @Query('per_page') int perPage = PAGE_SIZE,
    @Query('search') String? search,
  });

  @GET('/categories')
  Future<List<Category>> getCategories();

  @GET('/posts/{id}')
  Future<Post> getPost(@Path('id') int id);
}

//coverage:ignore-start
@riverpod
WordpressClient wordpressClient(Ref _) {
  final dio = Dio();
  return WordpressClient(dio);
}
//coverage:ignore-end

@riverpod
FutureOr<PostResponse> getPosts(
  GetPostsRef ref, {
  required int page,
  int? category,
  String? search,
  String? order,
  String? orderBy,
}) async {
  final client = ref.watch(wordpressClientProvider);

  final cancelToken = CancelToken();
  final link = ref.keepAlive();

  Timer? timer;

  ref.onDispose(() {
    cancelToken.cancel();
    timer?.cancel();
  });
  ref.onCancel(() {
    timer = Timer(WordpressClient.postTimeout, () {
      link.close(); //coverage:ignore-line
    });
  });
  ref.onResume(() {
    timer?.cancel();
  });

  return PostResponse.fromHttpResponse(
    await client.getPosts(
      page,
      cancelToken,
      category: category,
      search: search,
      order: order,
      orderBy: orderBy,
    ),
  );
}

@riverpod
FutureOr<Post> getPost(
  GetPostRef ref, {
  required int id,
}) async {
  final client = ref.watch(wordpressClientProvider);
  return await client.getPost(id);
}

@riverpod
FutureOr<List<Category>> getCategories(GetCategoriesRef ref) async {
  final client = ref.watch(wordpressClientProvider);
  return await client.getCategories();
}
