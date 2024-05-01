part of 'current_status_bloc.dart';

sealed class CurrentStatusEvent {}

class ApprovedButtonPressed extends CurrentStatusEvent {
  final String documentId;

  ApprovedButtonPressed({required this.documentId});
}

class RejectedButtonPressed extends CurrentStatusEvent {
  final String documentId;

  RejectedButtonPressed({required this.documentId});
}
