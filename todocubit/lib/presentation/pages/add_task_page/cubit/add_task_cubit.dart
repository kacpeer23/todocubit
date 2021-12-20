import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todocubit/data/repositories/task_repository.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  final TaskRepository _taskRepository = TaskRepository();
  AddTaskCubit() : super(AddTaskInitial());

  void addTask({required String title, required String description}) async {
    try {
      emit(AddTaskLoading());
      await _taskRepository.addTask(title: title, description: description);
      emit(AddTaskSuccess());
    } catch (error) {
      print(error);
      emit(AddTaskError());
    }
  }
}
