part of 'todo_details_bloc.dart';

class TodoDetailsState extends Equatable {
  final String? id;
  final String value;
  final String date;
  final bool isDone;

  const TodoDetailsState({
    required this.id,
    required this.value,
    required this.date,
    required this.isDone,
  });

  factory TodoDetailsState.initial() {
    return TodoDetailsState(
      id: null,
      value: '',
      date: DateTime.now().microsecondsSinceEpoch.toString(),
      isDone: false,
    );
  }

  @override
  List<Object?> get props => [id, value, date, isDone];

  TodoDetailsState copyWith({
    String? id,
    String? value,
    String? date,
    bool? isDone,
  }) {
    return TodoDetailsState(
      id: id ?? this.id,
      value: value ?? this.value,
      date: date ?? this.date,
      isDone: isDone ?? this.isDone,
    );
  }
}
