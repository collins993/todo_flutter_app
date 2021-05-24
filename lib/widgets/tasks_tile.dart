import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  final bool isChecked;
  final String tasksTitle;
  final Function checkboxCallBack;
  final Function longPressCallBack;

  TasksTile({this.isChecked, this.tasksTitle, this.checkboxCallBack, this.longPressCallBack});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
          tasksTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
