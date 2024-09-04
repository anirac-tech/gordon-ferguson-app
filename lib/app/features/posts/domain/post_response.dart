import 'package:wordpress_flutter_app/app/features/posts/domain/post.dart';
import 'package:retrofit/retrofit.dart';

class PostResponse {
  const PostResponse({
    required this.posts,
    required this.totalPages,
    required this.totalResults,
  });

  static const String totalPagesHeader = 'X-WP-TotalPages';
  static const String totalHeader = 'X-WP-Total';

  final List<Post> posts;
  final int totalPages;
  final int totalResults;

  factory PostResponse.fromHttpResponse(HttpResponse<List<Post>> http) {
    final totalPages = int.parse(http.response.headers.value(totalPagesHeader)!);
    final totalResults = int.parse(http.response.headers.value(totalHeader)!);
    return PostResponse(totalPages: totalPages, totalResults: totalResults, posts: http.data);
  }
}
