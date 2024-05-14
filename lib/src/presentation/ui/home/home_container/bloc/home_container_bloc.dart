import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_container_event.dart';
part 'home_container_state.dart';

class HomeContainerBloc extends Bloc<HomeContainerEvent, HomeContainerState> {
  HomeContainerBloc() : super(HomeContainerInitial()) {
    on<HomeContainerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
