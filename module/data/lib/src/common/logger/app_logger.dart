import 'package:data/src/common/enum/enumerations.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@Singleton()
class AppLogger {
  late Logger logger;
  late Logger loggerNoStack;

  AppLogger() {
    logger = Logger();
    loggerNoStack = Logger(
        printer: PrettyPrinter(methodCount: 0, printEmojis: true, colors: true));
  }

  void log(dynamic message,
      {LogLevel level = LogLevel.debug,
      String? name,
      dynamic error,
      StackTrace? stackTrace}) {
    logger.log(
        getLogLevel(level),
        '${name?.isNotEmpty == true ? '$name : ' : ''}$message',
        error,
        stackTrace);
  }

  void prettyLog(dynamic message,
      {LogLevel level = LogLevel.debug,
      dynamic error,
      StackTrace? stackTrace}) {
    loggerNoStack.log(getLogLevel(level), message, error, stackTrace);
  }

  void errorLog(String message,
      {LogLevel level = LogLevel.error,
      dynamic error,
      StackTrace? stackTrace}) {
    logger.log(Level.error, message, error, stackTrace);
  }

  Level getLogLevel(LogLevel level) {
    switch (level) {
      case LogLevel.verbose:
        return Level.verbose;
      case LogLevel.debug:
        return Level.debug;
      case LogLevel.info:
        return Level.info;
      case LogLevel.warning:
        return Level.warning;
      case LogLevel.error:
        return Level.error;
      case LogLevel.wtf:
        return Level.wtf;
      case LogLevel.nothing:
        return Level.nothing;
      default:
        return Level.debug;
    }
  }
}

class DebugFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (kDebugMode && event.level == Level.error ||
        event.level == Level.warning) {
      return true;
    }

    return false;
  }
}
