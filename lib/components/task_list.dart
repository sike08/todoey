import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
              name: task.name,
              isChecked: task.isDone,
              callback: (checkboxState) {
                taskData.updateTask(task);
              },
              onLongPress: () {
                taskData.deleteTask(index);
              });
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
