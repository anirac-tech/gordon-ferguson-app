import 'dart:math';

import 'package:wordpress_flutter_app/app/features/posts/domain/post.dart';
import 'package:wordpress_flutter_app/app/features/posts/domain/post_response.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart' as rf;

part 'test_data.g.dart';

@JsonLiteral('post_data.json')
List<Map<String, Object?>> get postData => _$postDataJsonLiteral;

const pageSize = 10;

List<Post> get mockPosts => postData
    .map(
      (e) => Post.fromJson(e),
    )
    .toList();

rf.HttpResponse<List<Post>> get mockHttpResponse {
  final headers = Headers();
  headers.add('X-WP-TotalPages', '${mockPosts.length ~/ pageSize + 1}');
  headers.add('X-WP-Total', '${mockPosts.length}');
  return rf.HttpResponse(
    mockPosts,
    Response<dynamic>(requestOptions: RequestOptions(), headers: headers),
  );
}

rf.HttpResponse<List<Post>> mockHttpPaginationResponse(int page, int totalLength) {
  assert(totalLength > 0 && page > 0);
  final pages = totalLength ~/ pageSize + 1;
  final length = min(pageSize, totalLength - (page - 1) * pageSize);
  final headers = Headers();

  headers.add(PostResponse.totalPagesHeader, '$pages');
  headers.add(PostResponse.totalHeader, '$totalLength');

  return rf.HttpResponse(
    List.generate(length, (index) => (index == 0 && page == 1) ? mockPosts.first : mockPosts.last),
    Response<dynamic>(requestOptions: RequestOptions(), headers: headers),
  );
}

PostResponse get mockPostResponse => PostResponse(
    posts: mockPosts, totalPages: mockPosts.length ~/ pageSize + 1, totalResults: mockPosts.length);
