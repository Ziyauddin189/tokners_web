
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:remote/remote.dart';
import 'package:shared/shared.dart';



abstract class ApplicationConfig extends Config {}

class AppInitializer {
  AppInitializer(this._applicationConfig);

  final ApplicationConfig _applicationConfig;

  Future<void> init() async {
    GetIt.instance.allowReassignment = true;
    await Future.wait([
      initHive(),
      initDateFormatting(),
    ]);
    await SharedConfig.getInstance().init();
    await RemoteConfig.getInstance().init();
    await DomainConfig.getInstance().init();
    await DataConfig.getInstance().init();
    await _applicationConfig.init();
  }


  Future<void> initHive() async{
    await Hive.initFlutter();
  }

  Future<void> initDateFormatting() async =>
      await initializeDateFormatting('en_US', null);
}

