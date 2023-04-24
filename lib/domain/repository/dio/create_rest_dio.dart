import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';

Dio createRestDio(String base) {
  final dio = Dio()..options = BaseOptions(baseUrl: base);
  dio.interceptors.add(
    LoggyDioInterceptor(requestBody: true),
  );
  return dio;
}
