part of 'time_bloc.dart';

sealed class TimeState {}

final class TimeInitial extends TimeState {}

class StartingTimeSelected extends TimeState {
  final String startingTime;

  StartingTimeSelected({required this.startingTime});
}
