import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  final _myBox = Hive.openBox('myBox');
}
