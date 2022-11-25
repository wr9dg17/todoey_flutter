import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_flutter/repositories/tasks.dart';

class TasksListItem extends StatelessWidget {
  final int index;
  final String title;
  final bool isChecked;

  const TasksListItem({
    Key? key,
    required this.index,
    required this.title,
    required this.isChecked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) => context.read<Tasks>().toggle(index: index),
      ),
    );
  }
}
