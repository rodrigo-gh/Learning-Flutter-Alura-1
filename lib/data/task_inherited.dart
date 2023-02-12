import 'package:alura_projeto/components/Task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Lavar louça', 'assets/images/louca.webp', 1),
    Task('Varrer casa', 'assets/images/varrer.jpg', 2),
    Task('Aprender Flutter', 'assets/images/flutter.png', 5),
    Task('Texto extremamente grande para teste', 'assets/images/test.png', 0),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return;
  }
}
