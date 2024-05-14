import 'dart:async';

import 'package:fluttertokners/src/presentation/base/mixin/event_transformer_mixin.dart';
import 'package:fluttertokners/src/presentation/base/bloc/base_bloc_event.dart';
import 'package:fluttertokners/src/presentation/base/bloc/base_bloc_state.dart';
import 'package:data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';


abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends BaseBlocDelegate<E, S> with EventTransformerMixin {
  BaseBloc(S initialState) : super(initialState);
}

abstract class BaseBlocDelegate<E extends BaseBlocEvent, S extends BaseBlocState>
    extends Bloc<E, S> {
  BaseBlocDelegate(S initialState) : super(initialState);

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    } else {
      AppLogger().log('Cannot add new event $event because $runtimeType was closed');
    }
  }

  void showLoading() {
    // todo
  }

  void hideLoading() {
    // todo
  }

  Future<void> runBlocCatching({
    required Future<void> Function() action,
    Future<void> Function()? doOnRetry,
    Future<void> Function(AppException)? doOnError,
    Future<void> Function()? doOnSubscribe,
    Future<void> Function()? doOnSuccessOrError,
    Future<void> Function()? doOnEventCompleted,
    bool handleLoading = true,
    bool handleError = true,
    bool handleRetry = true,
    bool Function(AppException)? forceHandleError,
    String? overrideErrorMessage,
  }) async {
    Completer<void>? recursion;
    try {
      await doOnSubscribe?.call();
      if (handleLoading) {
        showLoading();
      }

      await action.call();

      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
    } on AppException catch (e) {
      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
      await doOnError?.call(e);

      if (handleError || (forceHandleError?.call(e) ?? _forceHandleError(e))) {
        //todo
        // await addException(AppExceptionWrapper(
        //   appException: e,
        //   doOnRetry: doOnRetry ??
        //       (handleRetry
        //           ? () async {
        //         recursion = Completer();
        //         await runBlocCatching(
        //           action: action,
        //           doOnEventCompleted: doOnEventCompleted,
        //           doOnSubscribe: doOnSubscribe,
        //           doOnSuccessOrError: doOnSuccessOrError,
        //           doOnError: doOnError,
        //           doOnRetry: doOnRetry,
        //           forceHandleError: forceHandleError,
        //           handleError: handleError,
        //           handleLoading: handleLoading,
        //           handleRetry: handleRetry,
        //           overrideErrorMessage: overrideErrorMessage,
        //         );
        //         recursion?.complete();
        //       }
        //           : null),
        //   exceptionCompleter: Completer<void>(),
        //   overrideMessage: overrideErrorMessage,
        // ));
      }
    } finally {
      // await recursion?.future;
      await doOnEventCompleted?.call();
    }
  }

  bool _forceHandleError(AppException appException) {
    return appException is RemoteException &&
        appException.kind == RemoteExceptionKind.refreshTokenFailed;
  }
}
