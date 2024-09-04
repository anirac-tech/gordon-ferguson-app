import 'package:wordpress_flutter_app/SETUP.dart';
import 'package:wordpress_flutter_app/app/features/posts/view/post_stream_table_view.dart';
import 'package:wordpress_flutter_app/app/features/settings/settings_icon_button.dart';
import 'package:wordpress_flutter_app/app/shared/wpa_app_bar.dart';
import 'package:flutter/material.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  // Route information
  static const path = '/posts';
  static const name = 'posts';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: WpaAppBar(
          title: Text(BLOG_TITLE),
          actions: [SettingsIconButton()],
        ),
        body: Center(
          child: PostStreamTableView(),
        ),
      );
}
