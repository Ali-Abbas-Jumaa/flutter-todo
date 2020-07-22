import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a task",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkedState: isChecked,
        toggleCheckbox: (value) {
          setState(() {
            isChecked = value;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkedState;
  final Function toggleCheckbox;

  TaskCheckBox({this.checkedState, this.toggleCheckbox});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkedState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckbox,
    );
  }
}
