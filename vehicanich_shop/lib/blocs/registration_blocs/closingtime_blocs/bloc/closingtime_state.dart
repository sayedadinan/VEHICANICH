part of 'closingtime_bloc.dart';

sealed class ClosingtimeState {}

final class ClosingtimeInitial extends ClosingtimeState {}

class ClosingTimeSelected extends ClosingtimeState {
  final String closingTime;

  ClosingTimeSelected({required this.closingTime});
}
