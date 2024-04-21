part of 'service_bloc.dart';

sealed class ServiceEvent {}

class BodymaintaincePressed extends ServiceEvent {}

class EnableButtonPressed extends ServiceEvent {
  final String serviceName;

  EnableButtonPressed({required this.serviceName});
}

class ServiceAddingButtonPressed extends ServiceEvent {
  final String newservicename;

  ServiceAddingButtonPressed({required this.newservicename});
}
