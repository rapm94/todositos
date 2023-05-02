import 'package:injectable/injectable.dart';
import 'package:todositos/domain/models/todo_model.dart';
import 'package:todositos/domain/repository/todos/todo_repository.dart';

abstract class TodoInteractor {
  Future<List<Todo>> getTodos();
  Future<Todo> getTodoById(int id);
  Future<List<Todo>> getTodosByUserId(int id);
  Future<List<Todo>> getTodosRamdom();
  Future<Todo> postTodos(Todo todo);
  Future<Todo> putTodos(Todo todo);
  Future<void> deleteTodos(int id);
}

@Injectable(as: TodoInteractor)
class TodoInteractorImplementation implements TodoInteractor {
  TodoInteractorImplementation(this.todoRepository);

  final TodoRepository todoRepository;

  @override
  Future<List<Todo>> getTodos() {
    return todoRepository.getTodos();
  }

  @override
  Future<Todo> getTodoById(int id) {
    return todoRepository.getTodoById(id);
  }

  @override
  Future<List<Todo>> getTodosByUserId(int id) {
    return todoRepository.getTodosByUserId(id);
  }

  @override
  Future<List<Todo>> getTodosRamdom() {
    return todoRepository.getTodosRamdom();
  }

  @override
  Future<Todo> postTodos(Todo todo) {
    return todoRepository.postTodos(todo);
  }

  @override
  Future<Todo> putTodos(Todo todo) {
    return todoRepository.putTodos(todo);
  }

  @override
  Future<void> deleteTodos(int id) {
    return todoRepository.deleteTodos(id);
  }
}
