import 'package:remote/remote.dart';

class ResponseMapperConstants {
  const ResponseMapperConstants._();
  static const defaultErrorResponseMapperType = ErrorResponseMapperType.jsonObject;
  static const defaultSuccessResponseMapperType = SuccessResponseMapperType.dataJsonObject;
}
