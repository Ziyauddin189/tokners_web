import 'package:remote/remote.dart';

abstract class AuthRepository {

  Future<dynamic> postLogin(LoginRequest loginRequest);
  Future<dynamic> postRegister();

}