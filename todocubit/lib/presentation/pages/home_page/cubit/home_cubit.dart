import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
// import 'package:todocubit/data/models/task.dart';
import 'package:todocubit/data/repositories/task_repository.dart';
import 'package:todocubit/task_widget.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final TaskRepository _taskRepository = TaskRepository();
  HomeCubit() : super(HomeStateInitial());

  void getTasks() async {
    try {
      emit(HomeStateLoading());
      final List<Task> taskLists = await _taskRepository.getTasks();
      print(taskLists);
      emit(HomeStateLoaded(taskLists));
    } catch (error) {
      print(error);
      emit(HomeStateError());
    }
  }
}
