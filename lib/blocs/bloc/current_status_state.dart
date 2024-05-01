part of 'current_status_bloc.dart';

sealed class CurrentStatusState {}

final class CurrentStatusInitial extends CurrentStatusState {}

class ApprovedSucces extends CurrentStatusState {}

class ApprovedLoading extends CurrentStatusState {}

class ApprovedError extends CurrentStatusState {}

class RejectedSucces extends CurrentStatusState {}

class RejectedLoading extends CurrentStatusState {}

class RejectedError extends CurrentStatusState {}
