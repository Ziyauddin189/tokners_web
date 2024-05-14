import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';

@Singleton(as: ConfigRepository)
  class ConfigRepositoryImpl extends ConfigRepository {
  final ConfigApiService configApi;

  ConfigRepositoryImpl(this.configApi);

  @override
  Future<DataResponse<ConfigRecord>> getConfig() {
    return configApi.getConfig();
  }
}