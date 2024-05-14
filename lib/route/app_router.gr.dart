// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../src/presentation/ui/onboarding/on_boarding.dart' as _i2;
import '../src/presentation/ui/our_team/our_team.dart' as _i4;
import '../src/presentation/ui/splash/splash.dart' as _i1;
import '../src/presentation/ui/tokens/tokens.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.Splash(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.OnBoarding(),
      );
    },
    TokensRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.Tokens(),
      );
    },
    TeamRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.Team(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          OnBoardingRoute.name,
          path: '/onBoarding',
        ),
        _i5.RouteConfig(
          TokensRoute.name,
          path: '/tokens',
        ),
        _i5.RouteConfig(
          TeamRoute.name,
          path: '/team',
        ),
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.OnBoarding]
class OnBoardingRoute extends _i5.PageRouteInfo<void> {
  const OnBoardingRoute()
      : super(
          OnBoardingRoute.name,
          path: '/onBoarding',
        );

  static const String name = 'OnBoardingRoute';
}

/// generated route for
/// [_i3.Tokens]
class TokensRoute extends _i5.PageRouteInfo<void> {
  const TokensRoute()
      : super(
          TokensRoute.name,
          path: '/tokens',
        );

  static const String name = 'TokensRoute';
}

/// generated route for
/// [_i4.Team]
class TeamRoute extends _i5.PageRouteInfo<void> {
  const TeamRoute()
      : super(
          TeamRoute.name,
          path: '/team',
        );

  static const String name = 'TeamRoute';
}
