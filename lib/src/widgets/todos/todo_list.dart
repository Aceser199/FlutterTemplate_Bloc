import 'package:flutter/material.dart';
import 'package:flutter_temp/src/blocs/todo/todo_list/todo_list_bloc.dart';
import 'package:flutter_temp/src/widgets/todos/todo_card.dart';
import 'package:provider/provider.dart';

import 'add_todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: AddTodo(),
        ),
        Expanded(
            child: ListView.separated(
          itemBuilder: (context, index) {
            final todo = context.watch<TodoListBloc>().state.todos[index];

            return TodoCard(todo: todo);
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: context.watch<TodoListBloc>().state.todos.length,
        ))
      ],
    );
  }
}
