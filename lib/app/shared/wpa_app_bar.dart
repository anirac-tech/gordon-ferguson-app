import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WpaAppBar extends ConsumerWidget implements PreferredSizeWidget {
  WpaAppBar({
    this.title,
    this.actions,
    this.surfaceTintColor,
    this.height = kToolbarHeight,
  });

  final Widget? title;
  final List<Widget>? actions;
  final Color? surfaceTintColor;
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context, WidgetRef ref) => AppBar(
        title: title,
        centerTitle: false,
        actions: actions,
        surfaceTintColor: surfaceTintColor,
      );
}
