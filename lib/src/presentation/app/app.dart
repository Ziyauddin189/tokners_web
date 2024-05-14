import 'package:fluttertokners/generated/l10n.dart';
import 'package:fluttertokners/route/app_router.gr.dart';
import 'package:fluttertokners/src/presentation/app/bloc/app_bloc.dart';
import 'package:fluttertokners/src/presentation/base/bloc_page/base_page.dart';
import 'package:fluttertokners/src/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/app_state.dart';

class Application extends BasePage<AppBloc> {
  Application({Key? key}) : super(key: key);
  final _appRouter = AppRouter();


  @override
  bool get isAppWidget => true;

  @override
  Widget buildPage(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarColor: ColorName.backgroundColor2,
    //   systemNavigationBarDividerColor: null,
    //   systemNavigationBarIconBrightness: Brightness.dark,
    // ));

    // debugPaintSizeEnabled = true;
    return BlocBuilder<AppBloc, AppState>(builder: (context, state) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.system,
        localizationsDelegates: const [LanguageTranslation.delegate],
        supportedLocales: LanguageTranslation.delegate.supportedLocales,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        localeResolutionCallback:
            (Locale? locale, Iterable<Locale> supportedLocales) {
          if (supportedLocales.any((element) =>
              locale?.languageCode.contains(element.toString()) == true)) {
            String currentLanguageCode = state.currentLanguageCode ?? 'en';
            if (currentLanguageCode != locale!.languageCode) {
              SchedulerBinding.instance.addPostFrameCallback((_) {
                state.currentLanguageCode = locale.languageCode;
              });
            }

            return locale;
          }
          return const Locale('en', '');
        },
      );
    });
  }
}
