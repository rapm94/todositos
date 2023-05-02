import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import 'package:todositos/app/flavor_config.dart';

Dio createRestDio() {
  late Dio dio;

  final options = BaseOptions(
    baseUrl: FlavorConfig.instance.values.restBaseUrl,
  );

  // ignore: join_return_with_assignment
  dio = Dio(options);
  dio.interceptors.add(
    LoggyDioInterceptor(requestBody: true),
  );
  return dio;
}
