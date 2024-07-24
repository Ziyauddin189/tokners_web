import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'presale_container_event.dart';
part 'presale_container_state.dart';

class PresaleContainerBloc extends Bloc<PresaleContainerEvent, PresaleContainerState> {
  PresaleContainerBloc() : super(PresaleContainerInitial()) {
    on<PresaleContainerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
