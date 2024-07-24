import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quarter_container_event.dart';
part 'quarter_container_state.dart';

class QuarterContainerBloc extends Bloc<QuarterContainerEvent, QuarterContainerState> {
  QuarterContainerBloc() : super(QuarterContainerInitial()) {
    on<QuarterContainerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
