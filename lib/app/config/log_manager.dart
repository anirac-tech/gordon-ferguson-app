// coverage:ignore-file
import 'package:gordon_ferguson_app/env/flavor.dart';
import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:gordon_ferguson_app/app/features/posts/domain/post.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'log_manager.g.dart';

class LogManager {
  const LogManager({
    required this.logger,
  });

  final Logger logger;

  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    logger.d('[Event] Sent $name with params $parameters');
  }

  Future<void> logAppOpen(String? appFlavor) async {
    logger.d('appFlavor=$appFlavor');
  }

  Future<void> logShare({required Post post, required ShareResult shareResult}) async {
    logger.d('''[Event] 
        Shared post ${post.id} with status ${shareResult.status.name}''');
  }

  Future<void> d(String message) async {
    logger.d(message);
  }

  Future<void> e(
    String message,
    Object error, {
    StackTrace? stackTrace,
    bool isFatal = false,
  }) async {
    logger.e(message, error: error, stackTrace: stackTrace);
  }
}

@Riverpod(keepAlive: true)
LogManager logManager(LogManagerRef ref) {
  final appFlavor = getFlavor();
  final logger = (appFlavor == Flavor.prod) ? Log.prodLogger : Log.logger;
  return LogManager(logger: logger);
}
