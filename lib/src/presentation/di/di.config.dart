// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i6;
import 'package:fluttertokners/src/presentation/app/bloc/app_bloc.dart' as _i3;
import 'package:fluttertokners/src/presentation/ui/onboarding/bloc/onboarding_bloc.dart'
    as _i4;
import 'package:fluttertokners/src/presentation/ui/splash/bloc/splash_bloc.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
    gh.factory<_i4.OnBoardingBloc>(() => _i4.OnBoardingBloc());
    gh.factory<_i5.SplashBloc>(
        () => _i5.SplashBloc(gh<_i6.GetConfigUseCase>()));
    return this;
  }
}
