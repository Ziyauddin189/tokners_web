import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthApiService authApi;

  AuthRepositoryImpl(this.authApi);

  @override
  Future postLogin(LoginRequest request) {
    return authApi.login(request);
  }

  @override
  Future postRegister() {
    // TODO: implement postRegister
    throw UnimplementedError();
  }
}