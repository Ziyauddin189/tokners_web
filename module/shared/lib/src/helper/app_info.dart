import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@LazySingleton()
class AppInfo {
  PackageInfo? _packageInfo;

  String get appName => _packageInfo?.appName ?? '';
  String get applicationId => _packageInfo?.packageName ?? '';
  String get versionCode => _packageInfo?.buildNumber ?? '';
  String get versionName => _packageInfo?.version ?? '';

  Future<void> init() async {
    _packageInfo = await PackageInfo.fromPlatform();
    AppLogger().log(_packageInfo!.packageName, name: 'APPLICATION_ID');
    AppLogger().log(_packageInfo!.appName, name: 'APP_NAME');
    AppLogger().log(_packageInfo!.version, name: 'VERSION_NAME');
    AppLogger().log(_packageInfo!.buildNumber, name: 'VERSION_CODE');
  }
}
