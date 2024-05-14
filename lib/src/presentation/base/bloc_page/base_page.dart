import 'package:fluttertokners/src/presentation/app/bloc/app_bloc.dart';
import 'package:fluttertokners/src/presentation/base/bloc/base_bloc.dart';
import 'package:fluttertokners/src/presentation/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BasePage<B extends BaseBloc> extends StatelessWidget {
  late final AppBloc appBloc = getIt.get<AppBloc>();

  late final B bloc = getIt.get<B>();

  BasePage({super.key});

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
          children: [
            buildPage(context),
            buildPageLoading()
          ],
        ),
      ),
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget buildPage(BuildContext context);

}
