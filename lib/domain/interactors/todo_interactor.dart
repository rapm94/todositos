import 'package:injectable/injectable.dart';
import 'package:todositos/domain/models/todo_model.dart';
import 'package:todositos/domain/models/todo_request_model.dart';
import 'package:todositos/domain/models/todo_response_model.dart';
import 'package:todositos/domain/service/api_service.dart';

abstract class TodoInteractor {
  Future<TodoResponse> getTodos();
  Future<Todo> getTodoById(int id);
  Future<TodoResponse> getTodosByUserId(int id);
  Future<TodoResponse> getTodosRamdom();
  Future<Todo> postTodos(TodoRequestModel todo);
  Future<Todo> putTodos(TodoRequestModel todo);
  Future<void> deleteTodos(int id);
}

@Injectable(as: TodoInteractor)
class TodoInteractorImplementation implements TodoInteractor {
  TodoInteractorImplementation(this.apiService);

  final ApiService apiService;

  @override
  Future<TodoResponse> getTodos() {
    return apiService.getTodos();
  }

  @override
  Future<Todo> getTodoById(int id) {
    return apiService.getTodoById(id);
  }

  @override
  Future<TodoResponse> getTodosByUserId(int id) {
    return apiService.getTodosByUserId(id);
  }

  @override
  Future<TodoResponse> getTodosRamdom() {
    return apiService.getTodosRamdom();
  }

  @override
  Future<Todo> postTodos(TodoRequestModel todo) {
    return apiService.postTodos(todo);
  }

  @override
  Future<Todo> putTodos(TodoRequestModel todo) {
    return apiService.putTodos(todo);
  }

  @override
  Future<void> deleteTodos(int id) {
    return apiService.deleteTodos(id);
  }
}
