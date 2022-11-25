import 'package:flutter/material.dart';

import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/tasks_list_item.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function onToggle;

  const TasksList({
    Key? key,
    required this.tasks,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TasksListItem(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
          onToggle: () => onToggle(index),
        );
      }
    );
  }
}

