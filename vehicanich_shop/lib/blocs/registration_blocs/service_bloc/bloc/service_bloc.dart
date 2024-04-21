import 'package:bloc/bloc.dart';
part 'service_event.dart';
part 'service_state.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc()
      : super(ServiceInitial(serviceNameList: [
          'Dent Repairings',
          'Scratch Removal',
          'Paint Refinishing',
          'Body trimrepair'
        ], newmpty: [])) {
    on<BodymaintaincePressed>(bodimaintainbuttonpressed);
    on<EnableButtonPressed>(enablebuttonpressed);
    on<ServiceAddingButtonPressed>(serviceaddingbuttonpressed);
  }
  bodimaintainbuttonpressed(
      BodymaintaincePressed event, Emitter<ServiceState> emit) {
    emit(NavigatetoBodyservice(
        serviceNameList: state.serviceNameList, newmpty: state.newmpty));
  }

  enablebuttonpressed(EnableButtonPressed event, Emitter<ServiceState> emit) {
    List<String> servicestoring = [...state.newmpty];
    if (servicestoring.contains(event.serviceName)) {
      print('nadakoolaa');
      servicestoring.remove(event.serviceName);
      emit(Serviceremove(
          newmpty: servicestoring, serviceNameList: state.serviceNameList));
    } else {
      servicestoring.add(event.serviceName);
      emit(
        EnableBUttonValueAdded(
          newmpty: servicestoring,
          serviceNameList: state.serviceNameList,
        ),
      );
    }
  }

  serviceaddingbuttonpressed(
      ServiceAddingButtonPressed event, Emitter<ServiceState> emit) {
    List<String> cardTexts = [];
    if (cardTexts.contains(event.newservicename)) {
      print('value already exist');
    } else {
      cardTexts.add(event.newservicename);
      state.serviceNameList.addAll(cardTexts);
      emit(ServiceInitial(
        newmpty: state.newmpty,
        serviceNameList: state.serviceNameList,
      ));
    }
  }
}
