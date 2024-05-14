import 'dart:async';

import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/gen/assets.gen.dart';
import 'package:fluttertokners/route/app_router.gr.dart';
import 'package:fluttertokners/src/presentation/base/bloc_page/base_page_state.dart';
import 'package:fluttertokners/src/presentation/ui/splash/bloc/splash_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends BasePageState<Splash, SplashBloc>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      AutoRouter.of(context).replace(const OnBoardingRoute());
    });
  }

  @override
  bool get isAppWidget => true;

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.backgroundShade,
      extendBody: true,
      body: Center(
        child: Assets.images.icons.icLogo.svg(),
      ),
    );
  }
}
