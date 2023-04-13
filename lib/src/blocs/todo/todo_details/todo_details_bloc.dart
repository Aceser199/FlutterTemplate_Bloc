import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todo_details_event.dart';
part 'todo_details_state.dart';

class TodoDetailsBloc extends Bloc<TodoDetailsEvent, TodoDetailsState> {
  TodoDetailsBloc() : super(TodoDetailsState.initial()) {
    on<TodoDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
