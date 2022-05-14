import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabka_bazar/testbloc/features/todo_repository_impl.dart';
import 'package:sabka_bazar/testbloc/features/todo_state.dart';

import 'data.dart';

class TodoCubit extends Cubit<TodoState> {
  final TodoRepository _todoRepository;

  TodoCubit(this._todoRepository) : super(TodoInitial());

  Future<void> getData() async {
    try {
      List<Data> data = await _todoRepository.fetchData();
      emit(TodoLoaded(data: data));
    } on Exception {
      emit(TodoError(message: "Could not fetch the list, please try again later!"));
    }
  }
}