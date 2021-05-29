import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final Function callback;

  TaskTile({this.name, this.isChecked, this.callback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: callback,
      ),
      title: Text(
        name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
