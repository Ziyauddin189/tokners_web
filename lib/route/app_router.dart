import 'package:auto_route/auto_route.dart';
import 'package:fluttertokners/src/presentation/ui/onboarding/on_boarding.dart';
import 'package:fluttertokners/src/presentation/ui/our_team/our_team.dart';
import 'package:fluttertokners/src/presentation/ui/splash/splash.dart';
import 'package:fluttertokners/src/presentation/ui/tokens/tokens.dart';



@MaterialAutoRouter(routes: [
  AutoRoute(path: '/', page: Splash, initial: true),
  AutoRoute(path: '/onBoarding', page: OnBoarding),
  AutoRoute(path: '/tokens', page: Tokens),
  AutoRoute(path: '/team', page: Team),
])
class $AppRouter {}

//After edit this file, run command line:
// flutter packages pub run build_runner build --delete-conflicting-outputs
