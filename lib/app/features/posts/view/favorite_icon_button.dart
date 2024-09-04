import 'package:wordpress_flutter_app/app/features/posts/data/favorites_repository.dart';
import 'package:wordpress_flutter_app/app/features/posts/domain/post.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteIconButton extends ConsumerWidget {
  const FavoriteIconButton(this.post, {super.key});

  final Post post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesList = ref.watch(favoriteListProvider);
    final isFavorite = favoritesList.hasValue ? favoritesList.value!.contains(post) : false;

    return IconButton(
      onPressed: () => favoritesList.isLoading
          ? null
          : isFavorite
              ? ref.read(favoritesRepositoryProvider).removeFavorite(
                    post,
                  )
              : ref.read(favoritesRepositoryProvider).addFavorite(
                    post,
                  ),
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}
