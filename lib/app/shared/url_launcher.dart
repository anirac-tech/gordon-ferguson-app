import 'package:gordon_ferguson_app/app/config/log_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'url_launcher.g.dart';

@riverpod
Future<void> launch(Ref ref, {String? url}) async {
  if (url == null) return;

  await ref.read(logManagerProvider).logEvent(name: 'open_link', parameters: {'url': url});

  final url0 = Uri.parse(url);
  if (!await launchUrl(url0, mode: LaunchMode.externalApplication)) {
    // Don't know how to mock actual launchUrl method yet
    throw Exception('Could not launch $url0'); //coverage:ignore-line
  }
}
