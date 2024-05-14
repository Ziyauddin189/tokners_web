import 'package:rxdart/rxdart.dart';
import 'package:shared/src/config/log_config.dart';
import 'package:data/data.dart';

extension StreamExt<T> on Stream<T> {
  Stream<T> log(
      String name, {
        bool logOnListen = false,
        bool logOnData = false,
        bool logOnError = false,
        bool logOnDone = false,
        bool logOnCancel = false,
      }) {
    return doOnListen(() {
      if (LogConfig.logOnStreamListen && logOnListen) {
        AppLogger().log('$name : ▶️ onSubscribed');
      }
    }).doOnData((event) {
      if (LogConfig.logOnStreamData && logOnData) {
        AppLogger().log('$name : 🟢 onEvent: $event');
      }
    }).doOnCancel(() {
      if (LogConfig.logOnStreamCancel && logOnCancel) {
        AppLogger().log('$name : 🟡 onCanceled');
      }
    }).doOnError((e, _) {
      if (LogConfig.logOnStreamError && logOnError) {
        AppLogger().log('$name : 🔴 onError $e');
      }
    }).doOnDone(() {
      if (LogConfig.logOnStreamDone && logOnDone) {
        AppLogger().log('$name : ☑️️ onCompleted');
      }
    });
  }
}
