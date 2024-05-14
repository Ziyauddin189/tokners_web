import 'package:fluttertokners/src/presentation/app/bloc/app_bloc.dart';
import 'package:fluttertokners/src/presentation/base/bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends BasePageStateDelegate<T, B> {}

abstract class BasePageStateDelegate<T extends StatefulWidget,
    B extends BaseBloc> extends State<T> {
  late final AppBloc appBloc = GetIt.instance.get<AppBloc>();

  late final B bloc = GetIt.instance.get<B>();

  bool get isAppWidget => false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => bloc),
      ],
      child: buildPageListeners(
        child: isAppWidget
            ? buildPage(context)
            : Stack(
                children: [buildPage(context), buildPageLoading()],
              ),
      ),
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget buildPage(BuildContext context);

  @override
  void dispose() {
    super.dispose();
  }
}
