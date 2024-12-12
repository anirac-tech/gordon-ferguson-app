import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gordon_ferguson_app/SETUP.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/post_stream_table_view.dart';
import 'package:gordon_ferguson_app/app/features/settings/settings_icon_button.dart';
import 'package:gordon_ferguson_app/app/shared/wpa_search_bar.dart';
import 'package:gordon_ferguson_app/app/shared/wpa_app_bar.dart';

class PostsView extends HookWidget {
  const PostsView({super.key});

  // Route information
  static const path = '/posts';
  static const name = 'posts';

  @override
  Widget build(BuildContext context) {
    final search = useState(null as String?);
    return Scaffold(
      appBar: WpaAppBar(
        title: const Text(BLOG_TITLE),
        actions: [SettingsIconButton()],
        height: kToolbarHeight + kTextTabBarHeight,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kTextTabBarHeight),
          child: WpaSearchBar(
            onSubmit: (val) {
              if (val.isEmpty) {
                search.value = null;
              } else if (search.value != val) {
                search.value = val;
              }
            },
          ),
        ),
      ),
      body: Center(
        child: PostStreamTableView(
          search: search.value,
        ),
      ),
    );
  }
}
