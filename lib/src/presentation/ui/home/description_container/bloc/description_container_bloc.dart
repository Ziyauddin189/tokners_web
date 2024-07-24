import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'description_container_event.dart';
part 'description_container_state.dart';

class DescriptionContainerBloc extends Bloc<DescriptionContainerEvent, DescriptionContainerState> {
  DescriptionContainerBloc() : super(DescriptionContainerInitial()) {
    on<DescriptionContainerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
