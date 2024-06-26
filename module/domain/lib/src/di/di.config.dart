// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/src/repository/auth_repository.dart' as _i4;
import 'package:domain/src/repository/config_repository.dart' as _i6;
import 'package:domain/src/usecase/auth/auth_login_use_case.dart' as _i3;
import 'package:domain/src/usecase/get_config_use_case.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initDomainGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthLoginUseCase>(
        () => _i3.AuthLoginUseCase(gh<_i4.AuthRepository>()));
    gh.factory<_i5.GetConfigUseCase>(
        () => _i5.GetConfigUseCase(gh<_i6.ConfigRepository>()));
    return this;
  }
}
