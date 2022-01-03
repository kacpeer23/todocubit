part of 'details_cubit.dart';

@immutable
abstract class DetailsState {}

class DetailsInitial extends DetailsState {}

class DetailsLoading extends DetailsState {}

class DetailsLoaded extends DetailsState {
  final Task task;

  DetailsLoaded(this.task);
}

class DetailsError extends DetailsState {}
