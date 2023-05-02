// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todositos/app/d_injection/inject_dependencies.dart' as _i6;
import 'package:todositos/domain/interactors/todo_interactor.dart' as _i5;
import 'package:todositos/domain/repository/todos/todo_repository.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.Dio>(() => appModule.dio);
    gh.lazySingleton<_i4.TodoRepository>(
        () => _i4.TodoRepositoryImpl(gh<_i3.Dio>()));
    gh.factory<_i5.TodoInteractor>(
        () => _i5.TodoInteractorImplementation(gh<_i4.TodoRepository>()));
    return this;
  }
}

class _$AppModule extends _i6.AppModule {}
