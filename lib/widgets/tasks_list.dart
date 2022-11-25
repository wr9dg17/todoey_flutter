import 'package:flutter/material.dart';

import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/tasks_list_item.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;

  const TasksList({ Key? key, required this.tasks }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TasksListItem(
          index: index,
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
        );
      }
    );
  }
}

