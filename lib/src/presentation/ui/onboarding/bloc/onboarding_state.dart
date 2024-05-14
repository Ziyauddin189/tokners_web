import 'package:fluttertokners/src/presentation/base/bloc/base_bloc_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'onboarding_state.freezed.dart';

@freezed
class OnBoardingState extends BaseBlocState with _$OnBoardingState {
  const factory OnBoardingState({
    @Default(0) int index,
    @Default(<String>[]) List<String> onBoards,
  }) = _OnBoardingStateState;
}