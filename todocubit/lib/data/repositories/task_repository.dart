// import 'package:todocubit/data/models/task.dart';
import 'package:todocubit/data/providers/task_provider.dart';
import 'package:todocubit/task_widget.dart';

class TaskRepository {
  final TaskProvider _taskProvider = TaskProvider();
  Future<List<Task>> getTasks() async => _taskProvider.getTasks();
  Future<void> addTask(
          {required String title, required String description}) async =>
      _taskProvider.addTask(title: title, description: description);

  Future<Task> getTask(id) async => _taskProvider.getTask(id);
}
