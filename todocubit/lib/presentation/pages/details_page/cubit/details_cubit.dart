import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todocubit/data/repositories/task_repository.dart';
import 'package:todocubit/task_widget.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final TaskRepository _taskRepository = TaskRepository();

  DetailsCubit() : super(DetailsInitial());

  void getTask(id) async {
    try {
      // throw Exception();
      emit(DetailsLoading());
      final task = await _taskRepository.getTask(id);
      print(task);
      emit(DetailsLoaded(task));
    } catch (error) {
      print(error);
      emit(DetailsError());
    }
  }
}
