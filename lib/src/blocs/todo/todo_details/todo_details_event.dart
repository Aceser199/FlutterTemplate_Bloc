part of 'todo_details_bloc.dart';

abstract class TodoDetailsEvent extends Equatable {
  const TodoDetailsEvent();

  @override
  List<Object> get props => [];
}

class TodoDetailsEventLoad extends TodoDetailsEvent {
  const TodoDetailsEventLoad({required this.id});

  final String id;

  @override
  List<Object> get props => [id];
}

class ChangeValueTodoDetailsEvent extends TodoDetailsEvent {
  const ChangeValueTodoDetailsEvent({required this.value});

  final String value;

  @override
  List<Object> get props => [value];
}

class SaveTodoEvent extends TodoDetailsEvent {
  const SaveTodoEvent();

  @override
  List<Object> get props => [];
}
