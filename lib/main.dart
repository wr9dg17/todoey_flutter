import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_flutter/repositories/tasks.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<Tasks>(
      create: (context) => Tasks(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TasksScreen(),
    );
  }
}
