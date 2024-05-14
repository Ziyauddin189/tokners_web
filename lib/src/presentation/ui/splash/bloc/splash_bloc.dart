import 'dart:async';

import 'package:fluttertokners/src/presentation/base/bloc/base_bloc.dart';
import 'package:fluttertokners/src/presentation/ui/splash/bloc/splash_event.dart';
import 'package:fluttertokners/src/presentation/ui/splash/bloc/splash_state.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SplashBloc extends BaseBloc<SplashEvent, SplashState> {
  SplashBloc(this._configUseCase) : super(const SplashState()) {
    on<GetConfig>(
      _GetConfig,
      transformer: log(),
    );
  }

  final GetConfigUseCase _configUseCase;

  FutureOr<void> _GetConfig(GetConfig event, Emitter<SplashState> emit) {
    return runBlocCatching(
      action: () async {
       final result = await _configUseCase.execute(const GetConfigInput());
       emit(state.copyWith(record: result));
       AppLogger().log(result.toString(),level: LogLevel.verbose);
      },
      handleError: false,
      doOnError: (e) async {
        // emit(state.copyWith(onPageError: exceptionMessageMapper.map(e)));
      },
    );
  }
}