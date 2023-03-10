import 'package:try_some_new_widgets/pages/JsonVeriDenemesi/repository/repository.dart';
import '../models/todo.dart';

class TodoController{
  final Repository _repository;

  TodoController(this._repository);

  Future<List<Todo>> fetchTodoList() async{
    return _repository.getTodoList();
  }

  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }

  Future<String> updatePutCompleted(Todo todo) async {
    return _repository.putCompleted(todo);
  }

  Future<String> deleteTodo(Todo todo) async {
    return _repository.deletedTodo(todo);
  }

  Future<String> postTodo(Todo todo) async {
    return _repository.postTodo(todo);
  }

}