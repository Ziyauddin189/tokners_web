import 'package:data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToknerBlocObserver extends BlocObserver {
@override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    AppLogger().log(event);
  }
  @override void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
    AppLogger().log(transition);
  }

  @override void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    AppLogger().log('OnError', error:error, stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}