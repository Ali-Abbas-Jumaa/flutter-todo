import 'dart:collection';

import 'package:todoey/models/Task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy coffe'),
    Task(name: 'buy bread'),
    Task(name: 'pay the fee'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    Task task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}
