import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gordon_ferguson_app/app/config/log_manager.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post.dart';
import 'package:gordon_ferguson_app/setup.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class ShareIconButton extends ConsumerWidget {
  const ShareIconButton(this.post, {super.key, this.subject, this.message});

  final Post post;
  final String? subject;
  final String? message;

  Future<void> _onShare(BuildContext context, LogManager logManager) async {
    final box = context.findRenderObject() as RenderBox?;

    final excerpt = HtmlParser.parseHTML(post.excerpt.rendered).text.trim();

    final shareResult = await SharePlus.instance.share(
      ShareParams(
        text:
            message ??
            '''
Here's a post from the blog $blogTitle:
        
      "$excerpt"
      
      Read the full article here: ${post.link}''',
        subject: subject ?? 'Check out this Blog Post',
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
      ),
    );

    // coverage:ignore-start
    await logManager.logShare(post: post, shareResult: shareResult);
    // coverage:ignore-end
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) => IconButton(
    onPressed: () => _onShare(context, ref.read(logManagerProvider)),
    icon: const Icon(Icons.share),
  );
}
