import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/config/log_manager.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/category.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/category_tile.dart';
import 'package:gordon_ferguson_app/app/shared/async_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoriesListView extends ConsumerWidget {
  CategoriesListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final responseAsync = ref.watch(getCategoriesProvider);
    final log = ref.watch(logManagerProvider);

    return AsyncValueWidget<List<Category>>(
      value: responseAsync,
      data: (data) {
        final categories = data.where((c) => c.count > 0).toList();
        log.d("[Categories Stream] ${categories.map((e) => '${e.id}')}");
        return ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: categories.length,
          itemBuilder: (context, index) => CategoryTile(categories[index]),
        );
      },
    );
  }
}
