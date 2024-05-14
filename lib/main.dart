import 'package:fluttertokners/initializer/app_initializer.dart';
import 'package:fluttertokners/route/app_router.gr.dart';
import 'package:fluttertokners/src/config/app_config.dart';
import 'package:fluttertokners/src/presentation/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerSingleton<AppRouter>(AppRouter());
  await AppInitializer(AppConfig.getInstance()).init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(Application()));
}
