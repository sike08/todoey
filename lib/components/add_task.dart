import 'package:flutter/material.dart';
import '../constants.dart';

class AddTask extends StatelessWidget {
  String taskTitle;
  final Function onPressed;

  AddTask({this.onPressed});

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: kCurvedDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(),
              onChanged: (value) {
                taskTitle = value;
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                onPressed(taskTitle);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
