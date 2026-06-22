import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/category.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/post_stream_table_view.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(this.category, {super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<dynamic>(
            builder: (context) => Scaffold(
              backgroundColor: theme.colorScheme.primaryContainer,
              appBar: AppBar(
                title: Text(category.name),
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
              ),
              body: Center(child: PostStreamTableView(category: category.id)),
            ),
          ),
        );
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          category.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '${category.count} articles',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
