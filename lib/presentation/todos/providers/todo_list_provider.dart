import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todositos/app/d_injection/inject_dependencies.dart';
import 'package:todositos/common/request_provider.dart';
import 'package:todositos/domain/interactors/todo_interactor.dart';
import 'package:todositos/domain/models/todo_model.dart';

final todosListProvider = ChangeNotifierProvider.autoDispose((_) {
  return TodosListPresenter(getIt());
});

class TodosListPresenter extends RequestProvider<List<Todo>> {
  TodosListPresenter(
    this._todoInteractor,
  );

  final TodoInteractor _todoInteractor;

  Future<void> getTodos() async {
    await executeRequest<List<Todo>>(
      requestBuilder: () async {
        final todos = await _todoInteractor.getTodos();
        return todos;
      },
    );
  }
}
