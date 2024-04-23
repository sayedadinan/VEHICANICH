part of 'engine_bloc.dart';

sealed class EngineState {
  final List<String> serviceNameList;
  final List<String> newmpty;

  EngineState({required this.serviceNameList, required this.newmpty});
}

final class EngineInitial extends EngineState {
  EngineInitial({required super.serviceNameList, required super.newmpty});
}

class EngineEnableBUttonValueAdded extends EngineState {
  EngineEnableBUttonValueAdded(
      {required super.serviceNameList, required super.newmpty});
}

class EngineServiceremove extends EngineState {
  EngineServiceremove({required super.newmpty, required super.serviceNameList});
}
