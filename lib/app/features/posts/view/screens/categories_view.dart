import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/categories_list_view.dart';
import 'package:gordon_ferguson_app/app/features/settings/settings_icon_button.dart';
import 'package:gordon_ferguson_app/app/shared/wpa_app_bar.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  // Route information
  static const path = '/categories';
  static const name = 'categories';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: WpaAppBar(
          title: const Text("Categories"),
          actions: [SettingsIconButton()],
        ),
        body: Center(
          child: CategoriesListView(),
        ),
      );
}
