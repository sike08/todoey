import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20.0, left: 20.0),
      children: [
        TaskTile(
          title: 'Task2',
          onChanged: null,
        ),
        TaskTile(
          title: 'Task2',
          onChanged: null,
        ),
        TaskTile(
          title: 'Task2',
          onChanged: null,
        ),
      ],
    );
  }
}
