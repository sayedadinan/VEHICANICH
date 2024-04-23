part of 'service_bloc.dart';

sealed class ServiceState {
  final List<String> serviceNameList;
  final List<String> newmpty;
  ServiceState({
    required this.newmpty,
    required this.serviceNameList,
  });
}

final class ServiceInitial extends ServiceState {
  ServiceInitial({required super.serviceNameList, required super.newmpty});
}

class NavigatetoBodyservice extends ServiceState {
  NavigatetoBodyservice(
      {required super.serviceNameList, required super.newmpty});
}

class BodyEnableBUttonValueAdded extends ServiceState {
  BodyEnableBUttonValueAdded(
      {required super.serviceNameList, required super.newmpty});
}

class BodyServiceremove extends ServiceState {
  BodyServiceremove({required super.newmpty, required super.serviceNameList});
}
