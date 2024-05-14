import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:remote/remote.dart';

class ApiClientDefaultSetting {
  const ApiClientDefaultSetting._();

  // required interceptors
  static List<Interceptor> requiredInterceptors(Dio dio) => [
        if (kDebugMode) CustomLogInterceptor(),
        ConnectivityInterceptor(),
        RetryOnErrorInterceptor(dio),
      ];
}
