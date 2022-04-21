import 'package:myandroidapp/REST_API/models/todo.dart';
import 'package:myandroidapp/REST_API/repository/repository.dart';

class TodoController {
  final Repository _repository;

  TodoController(this._repository);

  Future<List<Todo>> fetchTodoList() async {
    return _repository.getTodoList();
  }
  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }
  Future<String> updatePutCompleted(Todo todo) async {
    return _repository.putCompleted(todo);
  }
  Future<String> deleteTodo(Todo todo) async {
    return _repository.deleteCompleted(todo);
  }
  Future<String> postTodo(Todo todo) async {
    return _repository.postCompleted(todo);
  }



}