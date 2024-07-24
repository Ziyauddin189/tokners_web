import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tokner_coming_event.dart';
part 'tokner_coming_state.dart';

class ToknerComingBloc extends Bloc<ToknerComingEvent, ToknerComingState> {
  ToknerComingBloc() : super(ToknerComingInitial()) {
    on<ToknerComingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
