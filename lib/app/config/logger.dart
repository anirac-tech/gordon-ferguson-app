import 'package:logger/logger.dart';

// Not a singleton class
class Log {
  static final logger = Logger(
      printer: PrettyPrinter(
    methodCount: 0,
  ));

  //coverage:ignore-start
  static final verboseLogger = Logger(
      level: Level.all,
      printer: PrettyPrinter(
        methodCount: 0,
      ));

  static final prodLogger = Logger(
      level: Level.off,
      printer: PrettyPrinter(
        methodCount: 0,
      ));
  //coverage:ignore-end

  static void d(String message) => logger.d(message);

  static void w(String message) => logger.w(message); // coverage:ignore-line

  static void e(
    String message,
    Object error, {
    StackTrace? stackTrace,
  }) =>
      logger.e(message, error: error, stackTrace: stackTrace);
}
