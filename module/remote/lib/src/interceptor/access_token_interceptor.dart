import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';
import 'package:shared/shared.dart';


@Injectable()
class AccessTokenInterceptor extends BaseInterceptor {
  AccessTokenInterceptor(this._userManager);

  final UserManager _userManager;

  @override
  int get priority => BaseInterceptor.accessTokenPriority;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = _userManager.getToken();
    if (token.isNotEmpty) {
      options.headers[ServerRequestResponseConstants.basicAuthorization] =
          '${ServerRequestResponseConstants.bearer} $token';
    }

    handler.next(options);
  }
}
