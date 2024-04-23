part of 'service_bloc.dart';

sealed class ServiceEvent {}

class BodymaintaincePressed extends ServiceEvent {}

class BodyEnableButtonPressed extends ServiceEvent {
  final String serviceName;

  BodyEnableButtonPressed({required this.serviceName});
}

class BodyServiceAddingButtonPressed extends ServiceEvent {
  final String newservicename;

  BodyServiceAddingButtonPressed({required this.newservicename});
}
