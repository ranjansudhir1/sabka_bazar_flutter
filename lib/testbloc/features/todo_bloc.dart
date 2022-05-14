import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabka_bazar/testbloc/features/todo_event.dart';
import 'package:sabka_bazar/testbloc/features/todo_repository_impl.dart';
import 'package:sabka_bazar/testbloc/features/todo_state.dart';

import 'data.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository _todoRepository;
  TodoBloc(this._todoRepository) : super(TodoInitial()) {
    on<TodoEvent>((event, emit) async {
      try {
        List<Data> data = await _todoRepository.fetchData();
        emit(TodoLoaded(data: data));
      } on Exception {
        emit(TodoError(message: "Couldn't fetch the list, please try again later!"));
      }
    });
  }
}