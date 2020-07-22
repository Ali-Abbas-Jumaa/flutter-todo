import 'package:todoey/models/Task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy coffe'),
    Task(name: 'buy bread'),
    Task(name: 'pay the fee'),
  ];
}
