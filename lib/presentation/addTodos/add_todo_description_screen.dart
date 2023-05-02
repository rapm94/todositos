import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todositos/presentation/addTodos/providers/add_todo_provider.dart';

class AddTodoDescriptionScreen extends ConsumerStatefulWidget {
  const AddTodoDescriptionScreen({super.key});

  static MaterialPageRoute<AddTodoDescriptionScreen> route() {
    return MaterialPageRoute<AddTodoDescriptionScreen>(
      builder: (BuildContext context) => const AddTodoDescriptionScreen(),
    );
  }

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddTodoDescriptionScreenState();
}

class _AddTodoDescriptionScreenState
    extends ConsumerState<AddTodoDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    final addTodoPresenter = ref.watch(addTodoProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: addTodoPresenter.todoController,
              decoration: const InputDecoration(
                hintText: 'Todo',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: ElevatedButton(
                onPressed: addTodoPresenter.addTodo,
                child: const Text('Add Todo'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
