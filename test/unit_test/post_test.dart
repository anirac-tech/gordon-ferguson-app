import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post.dart';
import 'package:flutter_test/flutter_test.dart';

import '../data/test_data.dart';

void main() {
  group('Test Post methods', () {
    testWidgets('converter', (tester) async {
      final post = mockPosts.first;
      final String sql = Post.converter.toSql(post);

      Log.d(sql);
      expect(Post.converter.fromSql(sql), post);
    });
  });
}
