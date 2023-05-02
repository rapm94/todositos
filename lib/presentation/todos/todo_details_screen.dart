import 'package:flutter/material.dart';
import 'package:todositos/domain/models/todo_model.dart';

class TodoDetailsScreen extends StatelessWidget {
  const TodoDetailsScreen({super.key, required this.todo});

  final Todo todo;

  static MaterialPageRoute<TodoDetailsScreen> route({
    required BuildContext context,
    required Todo todo,
  }) {
    return MaterialPageRoute<TodoDetailsScreen>(
      builder: (BuildContext context) => TodoDetailsScreen(
        todo: todo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.todo ?? ''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              todo.todo ?? '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
