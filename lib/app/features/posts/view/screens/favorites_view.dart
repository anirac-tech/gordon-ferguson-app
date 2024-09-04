import 'package:wordpress_flutter_app/app/config/log_manager.dart';
import 'package:wordpress_flutter_app/app/features/posts/data/favorites_repository.dart';
import 'package:wordpress_flutter_app/app/features/posts/domain/post.dart';
import 'package:wordpress_flutter_app/app/features/posts/view/post_cell.dart';
import 'package:wordpress_flutter_app/app/features/posts/view/screens/post_detail_view.dart';
import 'package:wordpress_flutter_app/app/features/settings/settings_icon_button.dart';
import 'package:wordpress_flutter_app/app/shared/wpa_app_bar.dart';
import 'package:wordpress_flutter_app/app/shared/async_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  // Route information
  static const path = '/favorites';
  static const name = 'favorites';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: WpaAppBar(
          title: const Text('Favorites'),
          actions: [SettingsIconButton()],
        ),
        body: Center(
          child: Consumer(
            builder: (context, ref, child) {
              final posts = ref.watch(favoriteListProvider);
              final log = ref.watch(logManagerProvider);
              log.d("[Favorites Stream] ${posts.valueOrNull?.map((e) => '${e.id}')}");

              return AsyncValueWidget<List<Post>>(
                value: posts,
                data: (data) => data.isNotEmpty
                    ? ListView.separated(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          final post = data[index];
                          return PostCell(
                            post,
                            key: Key('${FavoritesView.name}_${post.id}'),
                            routeName: FavoritesView.name,
                            onTap: () => context.pushNamed(PostDetailView.name, extra: post),
                          );
                        },
                        separatorBuilder: (_, __) => SizedBox(height: 10),
                      )
                    : const Text(
                        'You have nothing in your favorites.',
                        textAlign: TextAlign.center,
                      ),
              );
            },
          ),
        ),
      );
}
