import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  final Function onAddTask;

  const AddTask({Key? key, required this.onAddTask}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final taskTitleController = TextEditingController();
  String taskTitle = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              controller: taskTitleController,
              onChanged: (value) {
                taskTitle = value;
              },
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                widget.onAddTask(taskTitle);
                taskTitleController.clear();
                Navigator.pop(context);
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 14.0)
                ),
                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 16.0
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
