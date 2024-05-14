// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:remote/remote.dart' as _i9;
import 'package:remote/src/api/auth_api_service.dart' as _i12;
import 'package:remote/src/api/config_api_service.dart' as _i13;
import 'package:remote/src/client/act_auth_client.dart' as _i10;
import 'package:remote/src/client/act_no_auth_client.dart' as _i11;
import 'package:remote/src/database/app_manager.dart' as _i3;
import 'package:remote/src/database/user_manager.dart' as _i7;
import 'package:remote/src/interceptor/access_token_interceptor.dart' as _i8;
import 'package:remote/src/interceptor/connectivity_interceptor.dart' as _i4;
import 'package:remote/src/interceptor/header_interceptor.dart' as _i5;
import 'package:shared/shared.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initRemoteGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AppManager>(() => _i3.AppManager());
    gh.factory<_i4.ConnectivityInterceptor>(
        () => _i4.ConnectivityInterceptor());
    gh.factory<_i5.HeaderInterceptor>(
        () => _i5.HeaderInterceptor(gh<_i6.AppInfo>()));
    gh.lazySingleton<_i7.UserManager>(() => _i7.UserManager());
    gh.factory<_i8.AccessTokenInterceptor>(
        () => _i8.AccessTokenInterceptor(gh<_i9.UserManager>()));
    gh.lazySingleton<_i10.ActAuthClient>(() => _i10.ActAuthClient(
          gh<_i9.HeaderInterceptor>(),
          gh<_i9.AccessTokenInterceptor>(),
        ));
    gh.lazySingleton<_i11.ActNoAuthClient>(
        () => _i11.ActNoAuthClient(gh<_i9.HeaderInterceptor>()));
    gh.lazySingleton<_i12.AuthApiService>(() => _i12.AuthApiService(
          gh<_i9.ActNoAuthClient>(),
          gh<_i9.ActAuthClient>(),
        ));
    gh.lazySingleton<_i13.ConfigApiService>(
        () => _i13.ConfigApiService(gh<_i9.ActNoAuthClient>()));
    return this;
  }
}
