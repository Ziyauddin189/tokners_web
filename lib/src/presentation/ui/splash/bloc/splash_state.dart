import 'package:fluttertokners/src/presentation/base/bloc/base_bloc_state.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState extends BaseBlocState with _$SplashState {
  const factory SplashState({
    @Default(false) bool isLoading,
    ConfigRecord? record,
  }) = _SplashState;
}