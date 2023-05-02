import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todositos/common/hooks/use_init_hook.dart';
import 'package:todositos/presentation/addTodos/add_todo_description_screen.dart';
import 'package:todositos/presentation/todos/providers/todo_list_provider.dart';
import 'package:todositos/presentation/todos/todo_details_screen.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            AddTodoDescriptionScreen.route(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: todosListPresenter.state.maybeWhen(
          orElse: () => const CircularProgressIndicator(),
          loading: (todos) => const CircularProgressIndicator(),
          success: (todos) {
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            TodoDetailsScreen.route(
                              todo: todos[index],
                              context: context,
                            ),
                          );
                        },
                        child: Text(
                          todos[index].todo ?? '',
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          failure: (error) => Text(error.toString()),
        ),
      ),
    );
  }
}
