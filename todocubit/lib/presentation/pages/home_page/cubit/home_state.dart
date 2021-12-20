part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeStateInitial extends HomeState {}

class HomeStateLoaded extends HomeState {
  final List<Task> tasks;

  HomeStateLoaded(this.tasks);
}

class HomeStateLoading extends HomeState {}

class HomeStateError extends HomeState {}
