import 'package:wordpress_flutter_app/app/config/log_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'url_launcher.g.dart';

@riverpod
Future<void> launch(LaunchRef ref, {String? url}) async {
  if (url == null) return;

  ref.read(logManagerProvider).logEvent(
    name: 'open_link',
    parameters: {'url': url},
  );

  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
    // Don't know how to mock actual launchUrl method yet
    throw Exception('Could not launch $_url'); //coverage:ignore-line
  }
}
