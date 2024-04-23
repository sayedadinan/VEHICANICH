part of 'interior_bloc.dart';

sealed class InteriorState {
  final List<String> serviceNameList;
  final List<String> newmpty;

  InteriorState({required this.serviceNameList, required this.newmpty});
}

final class InteriorInitial extends InteriorState {
  InteriorInitial({required super.serviceNameList, required super.newmpty});
}

class InteriorEnableBUttonValueAdded extends InteriorState {
  InteriorEnableBUttonValueAdded(
      {required super.serviceNameList, required super.newmpty});
}

class InteriorServiceremove extends InteriorState {
  InteriorServiceremove(
      {required super.newmpty, required super.serviceNameList});
}
