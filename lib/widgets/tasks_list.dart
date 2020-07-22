import 'package:flutter/material.dart';
import 'package:todoey/models/Task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'buy coffe'),
    Task(name: 'buy bread'),
    Task(name: 'pay the fee'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallBack: (value) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
