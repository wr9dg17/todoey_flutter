import 'package:flutter/material.dart';

class TasksListItem extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function onToggle;

  const TasksListItem({
    Key? key,
    required this.title,
    required this.isChecked,
    required this.onToggle
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
        onChanged: (value) => onToggle()
      ),
    );
  }
}
