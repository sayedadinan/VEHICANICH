part of 'interior_bloc.dart';

sealed class InteriorEvent {}

class InteriorEnableButtonPressed extends InteriorEvent {
  final String serviceName;

  InteriorEnableButtonPressed({required this.serviceName});
}

class InteriorServiceAddingButtonPressed extends InteriorEvent {
  final String newservicename;

  InteriorServiceAddingButtonPressed({required this.newservicename});
}
