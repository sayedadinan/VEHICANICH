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

class EnableBUttonValueAdded extends ServiceState {
  EnableBUttonValueAdded(
      {required super.serviceNameList, required super.newmpty});
}

class Serviceremove extends ServiceState {
  Serviceremove({required super.newmpty, required super.serviceNameList});
}
// class ServiceAddingButton extends ServiceState {
//   final List<String> newservicenameList;
//   ServiceAddingButton({
//     required super.serviceNameList,
//     required this.newservicenameList,
//   });

