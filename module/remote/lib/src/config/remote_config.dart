import 'package:remote/src/database/app_manager.dart';
import 'package:remote/src/database/user_manager.dart';
import 'package:shared/shared.dart';
import '../di/di.dart' as di;

class RemoteConfig extends Config {
  RemoteConfig._();

  factory RemoteConfig.getInstance() {
    return _instance;
  }

  static final RemoteConfig _instance = RemoteConfig._();

  @override
  Future<void> config() async {
    await di.configureRemoteInjection();
    await di.getIt.get<UserManager>().init();
    await di.getIt.get<AppManager>().init();
  }
}
