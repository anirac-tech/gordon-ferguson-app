import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:go_router/go_router.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/favorite_icon_button.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/favorites_view.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/posts_view.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/share_icon_button.dart';
import 'package:gordon_ferguson_app/app/features/text_size/adjustable_text_widget.dart';
import 'package:gordon_ferguson_app/app/features/text_size/text_size_icon_button.dart';
import 'package:gordon_ferguson_app/app/shared/error_snackbar_view.dart';
import 'package:gordon_ferguson_app/app/shared/url_launcher.dart';
import 'package:gordon_ferguson_app/app/shared/wpa_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class PostDetailView extends HookConsumerWidget {
  const PostDetailView(this.post, {super.key, this.bottomSheetHeight = 70});

  // Route information
  static const path = '/details';
  static const name = 'details';

  final Post post;
  final double bottomSheetHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final appBarBackgroundColor = theme.appBarTheme.backgroundColor ?? theme.colorScheme.surface;
    final url0 = useState(null as String?);
    final heroMode = useState(true);
    final heroTag =
        GoRouter.of(context).routerDelegate.currentConfiguration.matches.first.matchedLocation ==
            PostsView.path
        ? PostsView.name
        : FavoritesView.name;

    return ErrorSnackbarView(
      provider: launchProvider(url: url0.value),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: appBarBackgroundColor,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: SafeArea(
          bottom: false,
          child: NotificationListener<ScrollNotification>(
            // coverage:ignore-start
            // untestable
            onNotification: (ScrollNotification notification) {
              // Deactivate hero mode if user has scrolled on page
              final hasScrolled = notification.metrics.pixels == 0;
              if (heroMode.value != hasScrolled) heroMode.value = hasScrolled;
              return true;
            },
            // coverage:ignore-end
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: appBarBackgroundColor,
                  title: const Text('Post Details'),
                  centerTitle: false,
                  floating: true,
                  snap: true,
                  actions: <Widget>[ShareIconButton(post), FavoriteIconButton(post)],
                ),
                SliverList.list(
                  children: [
                    if (post.imageUrl != null)
                      HeroMode(
                        enabled: heroMode.value,
                        child: Hero(
                          tag: '${heroTag}_${post.id}',
                          child: WpaImage(post.imageUrl!, fit: BoxFit.fitWidth),
                        ),
                      ),
                    Html(
                      data: post.title.rendered,
                      style: {'*': Style.fromTextStyle(theme.textTheme.headlineLarge!)},
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        DateFormat.yMMMMd().format(post.date),
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    AdjustableTextWidget(
                      child: Html(
                        data: post.content.rendered,
                        extensions: [
                          TagExtension(
                            tagsToExtend: {'img'},
                            builder: (tag) => tag.attributes['src'] != null
                                ? SizedBox(
                                    width: MediaQuery.of(context).size.width - 16,
                                    child: WpaImage(tag.attributes['src']!),
                                  )
                                : const SizedBox(),
                          ),
                        ],
                        onLinkTap: (url, _, __) =>
                            (url == url0.value) ? ref.invalidate(launchProvider) : url0.value = url,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextSizeIconButton.floating(isIncrease: false),
            SizedBox(width: 8),
            TextSizeIconButton.floating(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
