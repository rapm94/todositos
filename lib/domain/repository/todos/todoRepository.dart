import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:todositos/domain/models/todo_model.dart';
import 'package:todositos/domain/models/todo_request_model.dart';
import 'package:todositos/domain/models/todo_response_model.dart';

abstract class TodoRepository {
  Future<TodoResponse> getTodos();
  Future<Todo> getTodoById(int id);
  Future<TodoResponse> getTodosByUserId(int id);
  Future<TodoResponse> getTodosRamdom();
  Future<Todo> postTodos(TodoRequestModel todo);
  Future<Todo> putTodos(TodoRequestModel todo);
  Future<void> deleteTodos(int id);
}

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl(this._dio);

  final Dio _dio;

  @override
  Future<TodoResponse> getTodos() async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final result = await _dio.fetch<List<dynamic>>(
      _setStreamType<TodoResponse>(
        Options(method: 'GET', headers: headers, extra: extra)
            .compose(
              _dio.options,
              '/todos',
              queryParameters: queryParameters,
            )
            .copyWith(baseUrl: _dio.options.baseUrl),
      ),
    );
    final value = TodoResponse.fromJson(result.data! as Map<String, dynamic>);
    return value;
  }

  @override
  Future<Todo> getTodoById(int id) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
      _setStreamType<TodoResponse>(
        Options(method: 'GET', headers: headers, extra: extra)
            .compose(
              _dio.options,
              '/todos/$id',
              queryParameters: queryParameters,
            )
            .copyWith(baseUrl: _dio.options.baseUrl),
      ),
    );
    final value = Todo.fromJson(result.data!);
    return value;
  }

  @override
  Future<TodoResponse> getTodosByUserId(int id) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final result = await _dio.fetch<List<dynamic>>(
      _setStreamType<TodoResponse>(
        Options(method: 'GET', headers: headers, extra: extra)
            .compose(
              _dio.options,
              '/todos/$id',
              queryParameters: queryParameters,
            )
            .copyWith(baseUrl: _dio.options.baseUrl),
      ),
    );
    final value = TodoResponse.fromJson(result.data! as Map<String, dynamic>);
    return value;
  }

  @override
  Future<TodoResponse> getTodosRamdom() async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final result = await _dio.fetch<List<dynamic>>(
      _setStreamType<TodoResponse>(
        Options(method: 'GET', headers: headers, extra: extra)
            .compose(
              _dio.options,
              '/todos',
              queryParameters: queryParameters,
            )
            .copyWith(baseUrl: _dio.options.baseUrl),
      ),
    );
    final value = TodoResponse.fromJson(result.data! as Map<String, dynamic>);
    return value;
  }

  @override
  Future<Todo> postTodos(TodoRequestModel todo) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
      _setStreamType<Todo>(
        Options(method: 'POST', headers: headers, extra: extra)
            .compose(
              _dio.options,
              '/todos',
              queryParameters: queryParameters,
              data: todo.toJson(),
            )
            .copyWith(baseUrl: _dio.options.baseUrl),
      ),
    );
    final value = Todo.fromJson(result.data!);
    return value;
  }

  @override
  Future<Todo> putTodos(TodoRequestModel todo) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
      _setStreamType<Todo>(
        Options(method: 'PUT', headers: headers, extra: extra)
            .compose(
              _dio.options,
              '/todos/${todo.userId}',
              queryParameters: queryParameters,
              data: todo.toJson(),
            )
            .copyWith(baseUrl: _dio.options.baseUrl),
      ),
    );
    final value = Todo.fromJson(result.data!);
    return value;
  }

  @override
  Future<void> deleteTodos(int id) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    await _dio.fetch<void>(
      _setStreamType<void>(
        Options(method: 'DELETE', headers: headers, extra: extra)
            .compose(
              _dio.options,
              '/todos/$id',
              queryParameters: queryParameters,
            )
            .copyWith(baseUrl: _dio.options.baseUrl),
      ),
    );
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
