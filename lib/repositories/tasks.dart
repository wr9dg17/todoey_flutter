import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class Tasks with ChangeNotifier {
  final List<Task> _data = [];

  UnmodifiableListView<Task> get data {
    return UnmodifiableListView(_data);
  }

  int get length {
    return _data.length;
  }

  void addTask({ required name }) {
    _data.add(Task(name: name));
    notifyListeners();
  }

  void toggle({ required index }) {
    _data[index].toggle();
    notifyListeners();
  }
}
