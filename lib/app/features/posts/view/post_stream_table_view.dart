import 'package:gordon_ferguson_app/SETUP.dart';
import 'package:gordon_ferguson_app/app/config/log_manager.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post_response.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/post_cell.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/post_detail_view.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/posts_view.dart';
import 'package:gordon_ferguson_app/app/shared/async_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostStreamTableView extends ConsumerWidget {
  PostStreamTableView({super.key, this.category, this.tileColor});

  final int? category;
  final Color? tileColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final responseAsync = ref.watch(getPostsProvider(page: 1, category: category));
    final log = ref.watch(logManagerProvider);
    final pageSize = PAGE_SIZE;

    return AsyncValueWidget<PostResponse>(
      value: responseAsync,
      data: (data) {
        log.d("[Post Stream] ${data.posts.map((e) => '${e.id}')}");
        return ListView.separated(
          padding: EdgeInsets.only(top: 8.0),
          itemCount: data.totalResults,
          itemBuilder: (context, index) {
            final page = index ~/ pageSize + 1;
            final indexInPage = index % pageSize;

            final responseAsync = ref.watch(
              getPostsProvider(page: page, category: category),
            );

            return responseAsync.when(
              error: (err, stack) => PostCellError(
                page: page,
                indexInPage: indexInPage,
                error: err.toString(),
                isLoading: responseAsync.isLoading,
                color: tileColor,
              ),
              loading: () => PostCellLoading(color: tileColor),
              data: (data) {
                if (indexInPage >= data.posts.length) {
                  return null;
                }
                final post = data.posts[indexInPage];
                if (index == 0 && post.imageUrl != null) {
                  return PostCellFeatured(
                    post,
                    key: Key('${PostsView.name}_${post.id}'),
                    routeName: PostsView.name,
                    onTap: () => context.pushNamed(PostDetailView.name, extra: post),
                    color: tileColor,
                  );
                } else {
                  return PostCell(
                    post,
                    key: Key('${PostsView.name}_${post.id}'),
                    routeName: PostsView.name,
                    onTap: () => context.pushNamed(PostDetailView.name, extra: post),
                    color: tileColor,
                  );
                }
              },
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        );
      },
    );
  }
}
