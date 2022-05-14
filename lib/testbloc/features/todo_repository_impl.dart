import 'TodoService.dart';
import 'data.dart';

class TodoRepositoryImpl implements TodoRepository {

  TodoService service = TodoService();

  @override
  Future<List<Data>> fetchData() {
    return service.fetchData();
  }

}

abstract class TodoRepository {
  Future<List<Data>> fetchData();
}