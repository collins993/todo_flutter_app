import 'package:flutter/material.dart';
import 'package:todo_flutter_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter_app/models/task_data.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
                tasksTitle: task.name,
                isChecked: task.isDone,
                checkboxCallBack: (bool value) {
                  taskData.updateTask(task);
                },
              longPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}
