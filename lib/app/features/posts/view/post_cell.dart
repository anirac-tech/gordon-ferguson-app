import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/favorite_icon_button.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/share_icon_button.dart';
import 'package:gordon_ferguson_app/app/shared/wpa_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class PostCell extends StatelessWidget {
  const PostCell(this.post, {this.onTap, this.routeName, super.key, this.color});

  final Post post;
  final VoidCallback? onTap;
  final String? routeName;
  final Color? color;

  @override
  Widget build(BuildContext context) => Card(
        shadowColor: Colors.transparent,
        color: color,
        surfaceTintColor: (color == null) ? null : Colors.transparent,
        child: ListTile(
          title: Row(
            children: [
              Expanded(
                child: Html(
                  data: post.title.rendered,
                  style: {
                    '*': Style(
                      fontWeight: FontWeight.w600,
                      maxLines: 4,
                      textOverflow: TextOverflow.ellipsis,
                    )
                  },
                ),
              ),
              post.imageUrl != null
                  ? Container(
                      padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                      alignment: Alignment.topLeft,
                      child: Hero(
                        tag: '${routeName}_${post.id}',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SizedBox(
                            height: 60,
                            width: 80,
                            child: FittedBox(
                              clipBehavior: Clip.hardEdge,
                              fit: BoxFit.fitWidth,
                              child: WpaImage(post.imageUrl!),
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          subtitle: Column(
            children: [
              Html(
                data: post.excerpt.rendered,
                style: {
                  '*': Style(
                    maxLines: 3,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                },
              ),
              SizedBox(
                height: 40,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          DateFormat.yMMMd().format(post.date).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    ShareIconButton(post),
                    FavoriteIconButton(post),
                  ],
                ),
              ),
            ],
          ),
          onTap: onTap,
        ),
      );
}

class PostCellFeatured extends StatelessWidget {
  const PostCellFeatured(this.post, {this.onTap, this.routeName, super.key, this.color});

  final Post post;
  final VoidCallback? onTap;
  final String? routeName;
  final Color? color;

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Card(
          shadowColor: Colors.transparent,
          color: color,
          surfaceTintColor: (color == null) ? null : Colors.transparent,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Html(
                  data: post.title.rendered,
                  style: {
                    '*': Style(
                      fontWeight: FontWeight.w600,
                      fontSize: FontSize.xLarge,
                      maxLines: 3,
                      textOverflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    )
                  },
                ),
              ),
              post.imageUrl != null
                  ? Container(
                      padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                      alignment: Alignment.center,
                      child: Hero(
                        tag: '${routeName}_${post.id}',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.33,
                            width: double.infinity,
                            child: FittedBox(
                              clipBehavior: Clip.hardEdge,
                              fit: BoxFit.fitWidth,
                              child: WpaImage(post.imageUrl!),
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Html(
                  data: post.excerpt.rendered,
                  style: {
                    '*': Style(
                      maxLines: 3,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  },
                ),
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          DateFormat.yMMMd().format(post.date).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    ShareIconButton(post),
                    FavoriteIconButton(post),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: onTap,
      );
}

class PostCellLoading extends StatelessWidget {
  const PostCellLoading({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      color: color,
      surfaceTintColor: (color == null) ? null : Colors.transparent,
      child: SizedBox(
        height: 200,
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}

class PostCellError extends ConsumerWidget {
  const PostCellError({
    super.key,
    required this.page,
    required this.indexInPage,
    required this.isLoading,
    required this.error,
    this.color,
  });

  final int page;
  final int indexInPage;
  final bool isLoading;
  final String error;
  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shadowColor: Colors.transparent,
      color: color,
      surfaceTintColor: (color == null) ? null : Colors.transparent,
      child: ListTile(
        title: Text(error),
        onTap: isLoading
            ? null
            : () {
                ref.invalidate(getPostsProvider(page: page));
                return ref.read(getPostsProvider(page: page).future);
              },
        subtitle: const Text('Tap to reload'),
      ),
    );
  }
}
