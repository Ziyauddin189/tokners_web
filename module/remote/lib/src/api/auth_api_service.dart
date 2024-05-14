import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';
import 'package:remote/src/client/base/rest_api_client.dart';

@LazySingleton()
class AuthApiService {
  AuthApiService(
    this._noAuthClient,
    this._authClient,
  );

  final ActNoAuthClient _noAuthClient;
  final ActAuthClient _authClient;


  Future<DataResponse<dynamic>> login(LoginRequest request) async {
    return _noAuthClient.request(
      method: RestMethod.post,
      path: '/v1/auth/login',
      body: request,
    );
  }

  Future<void> logout() async {
    await _authClient.request(
      method: RestMethod.post,
      path: '/v1/auth/logout',
    );
  }

  Future<DataResponse<dynamic>> register({
    required String username,
    required String email,
    required String password,
    required int gender,
  }) async {
    return _noAuthClient.request(
      method: RestMethod.post,
      path: '/v1/auth/register',
      body: {
        'username': username,
        'gender': gender,
        'email': email,
        'password': password,
        'password_confirmation': password,
      },
    );
  }

  Future<void> forgotPassword(String email) async {
    await _noAuthClient.request(
      method: RestMethod.post,
      path: '/v1/auth/forgot-password',
      body: {
        'email': email,
      },
    );
  }

}
