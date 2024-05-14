import 'package:fluttertokners/src/presentation/base/bloc/base_bloc_state.dart';

abstract class AppState extends BaseBlocState{
  String? currentLanguageCode;

  bool isDarkMode;

  AppState({this.currentLanguageCode = 'en', this.isDarkMode = false});

}

class InitialAppState extends AppState {}

class SuccessGetConfigState extends AppState {
  dynamic record;

  SuccessGetConfigState(this.record);
}

class ErrorGetConfigState extends AppState {}
