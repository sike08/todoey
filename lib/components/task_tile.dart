import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final Function onChanged;

  TaskTile({@required this.title, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
      title: Text(title),
    );
  }
}