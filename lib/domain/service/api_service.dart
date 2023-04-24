import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:todositos/domain/models/todo_model.dart';
import 'package:todositos/domain/models/todo_request_model.dart';
import 'package:todositos/domain/models/todo_response_model.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {required String baseUrl}) =>
      _ApiService(dio, baseUrl: baseUrl);

  @GET('/todos')
  Future<TodoResponse> getTodos();

  @GET('/todos/{id}')
  Future<Todo> getTodoById(int id);

  @GET('todos/user/{id}')
  Future<TodoResponse> getTodosByUserId(int id);

  @GET('/todos/ramdom')
  Future<TodoResponse> getTodosRamdom();

  @POST('/todos')
  Future<Todo> postTodos(@Body() TodoRequestModel todo);

  @PUT('/todos/{id}')
  Future<Todo> putTodos(@Body() TodoRequestModel todo);

  @DELETE('/todos/{id}')
  Future<void> deleteTodos(int id);
}
