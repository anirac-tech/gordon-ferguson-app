import 'package:wordpress_flutter_app/app/features/settings/settings_icon_button.dart';
import 'package:wordpress_flutter_app/app/shared/wpa_app_bar.dart';
import 'package:wordpress_flutter_app/app/shared/error_snackbar_view.dart';
import 'package:wordpress_flutter_app/app/shared/url_launcher.dart';
import 'package:wordpress_flutter_app/app/shared/wpa_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AboutView extends HookConsumerWidget {
  const AboutView({super.key});

  // Route information
  static const path = '/about';
  static const name = 'about';

  final String _imageUrl = '''
https://gordonferguson.org/wp-content/uploads/2016/11/Final-Main-Header.jpg''';
  final String _resourcesHtml = '''
    Visit Gordon's <a href='https://gordonferguson.org'>main website</a><br>
    <a href="https://www.ipibooks.com/collections/gordon-ferguson">Books, audio, videos (IPI)</a><br>
    <a href="mailto:gordonferguson33@gmail.com">Contact</a>
    ''';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _url = useState(null as String?);

    return ErrorSnackbarView<void>(
      provider: launchProvider(url: _url.value),
      child: Scaffold(
        appBar: WpaAppBar(title: const Text('About'), actions: [SettingsIconButton()]),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              WpaImage(_imageUrl),
              Html(
                data: _resourcesHtml,
                shrinkWrap: true,
                style: {
                  '*': Style(
                    fontSize: FontSize.large,
                    textAlign: TextAlign.justify,
                  )
                },
                onLinkTap: (String? url, _, __) =>
                    (url == _url.value) ? ref.invalidate(launchProvider) : _url.value = url,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
