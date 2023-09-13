import 'package:bloc_basics_todo_app_example/data.dart';
import 'package:bloc_basics_todo_app_example/todo_service.dart';

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
