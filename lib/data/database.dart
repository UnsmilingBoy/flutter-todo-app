import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('myBox');

  // init data
  void createInitialData() {
    toDoList = [
      ["Study", false],
      ["Touch grass", true],
    ];
  }

  //load data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update data
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
