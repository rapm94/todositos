import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todositos/app/d_injection/inject_dependencies.config.dart';
import 'package:todositos/app/flavor_config.dart';
import 'package:todositos/domain/repository/dio/create_rest_dio.dart';
import 'package:todositos/domain/service/api_service.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
GetIt injectDependencies() => getIt.init();

@module
abstract class AppModule {
  @lazySingleton
  ApiService get dio => ApiService(
        createRestDio(FlavorConfig.instance.values.restBaseUrl),
        baseUrl: FlavorConfig.instance.values.restBaseUrl,
      );
}
