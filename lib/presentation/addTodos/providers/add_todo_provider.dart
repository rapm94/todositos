import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todositos/app/d_injection/inject_dependencies.dart';
import 'package:todositos/common/request_provider.dart';
import 'package:todositos/common/request_state.dart';
import 'package:todositos/domain/interactors/todo_interactor.dart';
import 'package:todositos/domain/models/todo_model.dart';

final addTodoProvider = ChangeNotifierProvider.autoDispose((_) {
  return AddTodoPresenter(getIt());
});

class AddTodoPresenter extends RequestProvider<Todo> {
  AddTodoPresenter(
    this._todoInteractor,
  );

  final TodoInteractor _todoInteractor;
  final TextEditingController todoController = TextEditingController();

  Future<RequestState<Todo, Exception>> addTodo() async {
    return executeRequest<Todo>(
      requestBuilder: () async {
        final todoResponse = await _todoInteractor.postTodos(
          Todo(
            todo: todoController.text,
            completed: false,
            userId: 1,
          ),
        );
        return todoResponse;
      },
    );
  }
}
