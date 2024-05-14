import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';
import 'package:remote/src/client/base/rest_api_client.dart';

@LazySingleton()
class ConfigApiService {
  ConfigApiService(
    this._noAuthClient,
  );

  final ActNoAuthClient _noAuthClient;

  Future<DataResponse<ConfigRecord>> getConfig() async {
    var data = _noAuthClient.request<DataResponse<ConfigRecord>, ConfigRecord>(
      method: RestMethod.get,
      path: '/configuration?api_key=534c49b3a09e37303f16bf241432922d',
      decoder: ConfigRecord.fromJson,
    );
    data.then((value) =>  AppLogger().log(value.data, name: 'ASYNC CALL'));
    return data;
  }
}
