import 'dart:io';

void main(List<String> args) {
   final todoList = TodoPerform();

  while (true) {
    print('Todo List Menu:');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');

    stdout.write('Enter your choice: ');
    final choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write('Enter task description: ');
        final description = stdin.readLineSync();
        todoList.addTask(description!);
        break;
      case 2:
        stdout.write('Enter task number to remove: ');
        final taskNumber = int.parse(stdin.readLineSync()!) - 1;
        todoList.removeTask(taskNumber);
        break;
      case 3:
        print('Tasks:');
        todoList.viewTasks();
        break;
      case 4:
        exit(0);
      default:
        print('Invalid choice. Please try again.');
        break;
    }
  }
}

class Task {
  String taskName;
  bool isCompleted;
  Task({required this.isCompleted, required this.taskName});
}

class TodoPerform {
  List<Task> tasks = [];

  void addTask(String taskName) {
    tasks.add(Task(isCompleted: false, taskName: taskName));
  }

  void removeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
    }
  }

  void viewTasks() {
    for (var task in tasks) {
      print(
          'Task => ${task.taskName} is ${task.isCompleted == true ? 'Completed' : 'Not Completd'} ');
    }
  }
}
