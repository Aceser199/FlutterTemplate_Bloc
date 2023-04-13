import 'package:flutter/material.dart';
import 'package:i_todo_api/i_todo_api.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key, required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.value),
      trailing: Text(todo.date),
    );
  }
}
