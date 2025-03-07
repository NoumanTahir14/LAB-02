import 'dart:io';

void main() {
  List<String> tasks = [];
  bool running = true;

  while (running) {
    print('''
    To-Do List Manager
    1. Add Task
    2. View Tasks
    3. Mark Task as Completed
    4. Exit
    ''');

    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter the task: ');
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print('Task added successfully!');
        } else {
          print('Invalid task. Please enter a valid task.');
        }
        break;
      case '2':
        if (tasks.isEmpty) {
          print('No tasks to display.');
        } else {
          print('Tasks:');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;
      case '3':
        if (tasks.isEmpty) {
          print('No tasks to mark as completed.');
        } else {
          stdout.write('Enter the task number to mark as completed: ');
          String? input = stdin.readLineSync();
          if (input != null) {
            int index = int.tryParse(input) ?? -1;
            if (index > 0 && index <= tasks.length) {
              tasks[index - 1] = '[Completed] ${tasks[index - 1]}';
              print('Task marked as completed.');
            } else {
              print('Invalid task number. Please enter a valid number.');
            }
          }
        }
        break;
      case '4':
        running = false;
        print('Exiting the program. Goodbye!');
        break;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}