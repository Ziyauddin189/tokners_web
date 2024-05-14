import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertokners/initializer/app_initializer.dart';
import 'package:fluttertokners/src/presentation/base/ToknerBlocObserver.dart';
import 'package:fluttertokners/src/presentation/di/di.dart';

class AppConfig extends ApplicationConfig {
  factory AppConfig.getInstance() {
    return _instance;
  }

  AppConfig._();

  static final AppConfig _instance = AppConfig._();

  @override
  Future<void> config() async {
    Bloc.observer = ToknerBlocObserver();
    await configureInjection();
  }
}