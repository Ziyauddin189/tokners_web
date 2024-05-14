import 'package:fluttertokners/src/presentation/app/bloc/app_state.dart';
import 'package:fluttertokners/src/presentation/base/bloc/base_bloc.dart';
import 'package:injectable/injectable.dart';
import 'app_event.dart';

@injectable
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(InitialAppState());

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {}
}
