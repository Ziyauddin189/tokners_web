import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/bloc/base_bloc_event.dart';
part 'onboarding_event.freezed.dart';

abstract class OnBoardingEvent extends BaseBlocEvent{
  const OnBoardingEvent();
}

@freezed
class UpdateIndex extends OnBoardingEvent with _$UpdateIndex{
  const factory UpdateIndex({
    required int index,
  }) = _UpdateIndex;
}

@freezed
class UpdateBoards extends OnBoardingEvent with _$UpdateBoards{
  const factory UpdateBoards({
    required List<String> boards,
  }) = _UpdateBoards;
}