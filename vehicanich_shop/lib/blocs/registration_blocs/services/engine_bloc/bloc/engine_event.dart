part of 'engine_bloc.dart';

sealed class EngineEvent {}

class EnginemaintaincePressed extends EngineEvent {}

class EngineEnableButtonPressed extends EngineEvent {
  final String serviceName;

  EngineEnableButtonPressed({required this.serviceName});
}

class EngineServiceAddingButtonPressed extends EngineEvent {
  final String newservicename;

  EngineServiceAddingButtonPressed({required this.newservicename});
}
