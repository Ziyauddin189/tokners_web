import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'footer_container_event.dart';
part 'footer_container_state.dart';

class FooterContainerBloc extends Bloc<FooterContainerEvent, FooterContainerState> {
  FooterContainerBloc() : super(FooterContainerInitial()) {
    on<FooterContainerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
