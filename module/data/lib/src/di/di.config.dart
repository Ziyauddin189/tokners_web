// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/src/common/logger/app_logger.dart' as _i3;
import 'package:data/src/mapper/base_error_mapper/json_array_error_response_mapper.dart'
    as _i10;
import 'package:data/src/mapper/base_error_mapper/json_object_error_response_mapper.dart'
    as _i12;
import 'package:data/src/mapper/base_error_mapper/line_error_response_mapper.dart'
    as _i14;
import 'package:data/src/mapper/base_success_mapper/data_json_array_response_mapper.dart'
    as _i8;
import 'package:data/src/mapper/base_success_mapper/data_json_object_reponse_mapper.dart'
    as _i9;
import 'package:data/src/mapper/base_success_mapper/json_array_response_mapper.dart'
    as _i11;
import 'package:data/src/mapper/base_success_mapper/json_object_reponse_mapper.dart'
    as _i13;
import 'package:data/src/mapper/base_success_mapper/records_json_array_response_mapper.dart'
    as _i15;
import 'package:data/src/mapper/base_success_mapper/results_json_array_response_mapper.dart'
    as _i16;
import 'package:data/src/repository/auth_repository_impl.dart' as _i5;
import 'package:data/src/repository/config_repository_impl.dart' as _i7;
import 'package:domain/domain.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:remote/remote.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initDataGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppLogger>(_i3.AppLogger());
    gh.singleton<_i4.AuthRepository>(
        _i5.AuthRepositoryImpl(gh<_i6.AuthApiService>()));
    gh.singleton<_i4.ConfigRepository>(
        _i7.ConfigRepositoryImpl(gh<_i6.ConfigApiService>()));
    gh.factory<_i8.DataJsonArrayResponseMapper<dynamic>>(
        () => _i8.DataJsonArrayResponseMapper<dynamic>());
    gh.factory<_i9.DataJsonObjectResponseMapper<dynamic>>(
        () => _i9.DataJsonObjectResponseMapper<dynamic>());
    gh.factory<_i10.JsonArrayErrorResponseMapper>(
        () => _i10.JsonArrayErrorResponseMapper());
    gh.factory<_i11.JsonArrayResponseMapper<dynamic>>(
        () => _i11.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i12.JsonObjectErrorResponseMapper>(
        () => _i12.JsonObjectErrorResponseMapper());
    gh.factory<_i13.JsonObjectResponseMapper<dynamic>>(
        () => _i13.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i14.LineErrorResponseMapper>(
        () => _i14.LineErrorResponseMapper());
    gh.factory<_i15.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i15.RecordsJsonArrayResponseMapper<dynamic>());
    gh.factory<_i16.ResultsJsonArrayResponseMapper<dynamic>>(
        () => _i16.ResultsJsonArrayResponseMapper<dynamic>());
    return this;
  }
}
