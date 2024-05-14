import 'package:domain/src/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';

@injectable
class AuthLoginUseCase {
  final AuthRepository repository;

  AuthLoginUseCase(this.repository);

  Future<dynamic> postLogin({required LoginRequest request}) {
    return repository.postLogin(request);
  }
}
