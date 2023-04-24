import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todositos/common/hooks/use_init_hook.dart';
import 'package:todositos/presentation/todos/providers/todoListProvider.dart';

class TodoListScreen extends StatefulHookConsumerWidget {
  const TodoListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends ConsumerState<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    final todosListPresenter = ref.watch(todosListProvider);

    useInitAsync(todosListPresenter.getTodos);

    return Scaffold(
      body: Center(
        child: todosListPresenter.state.maybeWhen(
          orElse: () => const CircularProgressIndicator(),
          loading: (todos) => const CircularProgressIndicator(),
          success: (todos) {
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(todos[index].todo ?? '');
              },
            );
          },
          failure: (error) => Text(error.toString()),
        ),
      ),
    );
  }
}
