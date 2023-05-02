import 'package:injectable/injectable.dart';
import 'package:todositos/domain/models/todo_model.dart';
import 'package:todositos/domain/models/todo_request_model.dart';
import 'package:todositos/domain/models/todo_response_model.dart';
import 'package:todositos/domain/repository/todos/todoRepository.dart';

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
  TodoInteractorImplementation(this.todoRepository);

  final TodoRepository todoRepository;

  @override
  Future<TodoResponse> getTodos() {
    return todoRepository.getTodos();
  }

  @override
  Future<Todo> getTodoById(int id) {
    return todoRepository.getTodoById(id);
  }

  @override
  Future<TodoResponse> getTodosByUserId(int id) {
    return todoRepository.getTodosByUserId(id);
  }

  @override
  Future<TodoResponse> getTodosRamdom() {
    return todoRepository.getTodosRamdom();
  }

  @override
  Future<Todo> postTodos(TodoRequestModel todo) {
    return todoRepository.postTodos(todo);
  }

  @override
  Future<Todo> putTodos(TodoRequestModel todo) {
    return todoRepository.putTodos(todo);
  }

  @override
  Future<void> deleteTodos(int id) {
    return todoRepository.deleteTodos(id);
  }
}
