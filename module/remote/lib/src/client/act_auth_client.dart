import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';
import 'package:remote/src/client/base/rest_api_client.dart';
import 'package:remote/src/util/constants.dart';

@LazySingleton()
class ActAuthClient extends RestApiClient {
  ActAuthClient(
      HeaderInterceptor _headerInterceptor,
      AccessTokenInterceptor _accessTokenInterceptor,
      ) : super(baseUrl: Constants.shared().endpoint, interceptors: [
    _headerInterceptor,
    _accessTokenInterceptor,
  ]);
}
