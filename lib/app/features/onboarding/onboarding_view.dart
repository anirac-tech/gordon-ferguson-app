import 'package:gordon_ferguson_app/app/features/settings/settings_icon_button.dart';
import 'package:gordon_ferguson_app/app/features/text_size/adjustable_text_widget.dart';
import 'package:gordon_ferguson_app/app/shared/wpa_app_bar.dart';
import 'package:gordon_ferguson_app/app/shared/error_snackbar_view.dart';
import 'package:gordon_ferguson_app/app/shared/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OnboardingView extends ConsumerWidget {
  const OnboardingView({super.key});

  // Route information
  static const path = '/onboarding';
  static const name = 'onboarding';

  final String _imageUrl = 'assets/images/Final-Main-Header.jpg';

  static const Map<String, String> urls = {
    "Website": "https://gordonferguson.org",
    "Books, Audio, and More": "https://www.ipibooks.com/collections/gordon-ferguson",
    "Contact": "mailto:gordonferguson33@gmail.com",
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
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
              Image.asset(
                _imageUrl,
                errorBuilder: (_, __, ___) => const SizedBox(),
              ),
              SizedBox(height: 8.0),
              AdjustableTextWidget(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    child: Text(
                      """\"The idea of being a teacher of one kind or another is now a very old idea for me. Shortly after entering my seventh grade year in junior high school, I decided (at my musical mother’s urging) to start taking band as a subject. By the next year, I had decided to become a band director, a teacher of music. I never wavered from that decision once I made it, at least until the “preaching bug” bit me after I was married and started seeking God in a serious way...\"""",
                      style: TextStyle(
                        fontSize: 14,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
              ...urls.keys.map(
                (key) {
                  final url = urls[key];
                  return ElevatedButton(
                    onPressed: () =>
                        (url == _url.value) ? ref.invalidate(launchProvider) : _url.value = url,
                    child: Text(key),
                  );
                },
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
