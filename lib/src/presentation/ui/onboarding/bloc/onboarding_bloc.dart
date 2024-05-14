import 'package:fluttertokners/src/presentation/base/bloc/base_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

@injectable
class OnBoardingBloc extends BaseBloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState(index: 0, onBoards: <String>[])) {
    on<UpdateIndex>(
      _onUpdateIndex,
      transformer: log(),
    );
    on<UpdateBoards>(
      _onUpdateBoards,
      transformer: log(),
    );
  }

  void _onUpdateIndex(UpdateIndex event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(
      index: event.index,
    ));
  }

  void _onUpdateBoards(UpdateBoards event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(
      onBoards: event.boards,
    ));
  }
}
