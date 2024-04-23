import 'package:bloc/bloc.dart';
part 'service_event.dart';
part 'service_state.dart';

class BodyBloc extends Bloc<ServiceEvent, ServiceState> {
  BodyBloc()
      : super(ServiceInitial(serviceNameList: [
          'Dent Repairings',
          'Scratch Removal',
          'Paint Refinishing',
          'Body trimrepair'
        ], newmpty: [])) {
    on<BodymaintaincePressed>(bodimaintainbuttonpressed);
    on<BodyEnableButtonPressed>(bodyenablebuttonpressed);
    on<BodyServiceAddingButtonPressed>(serviceaddingbuttonpressed);
  }
  bodimaintainbuttonpressed(
      BodymaintaincePressed event, Emitter<ServiceState> emit) {
    emit(NavigatetoBodyservice(
        serviceNameList: state.serviceNameList, newmpty: state.newmpty));
  }

  bodyenablebuttonpressed(
      BodyEnableButtonPressed event, Emitter<ServiceState> emit) {
    List<String> servicestoring = [...state.newmpty];
    if (servicestoring.contains(event.serviceName)) {
      print('nadakoolaa');
      servicestoring.remove(event.serviceName);
      emit(BodyServiceremove(
          newmpty: servicestoring, serviceNameList: state.serviceNameList));
    } else {
      servicestoring.add(event.serviceName);
      emit(
        BodyEnableBUttonValueAdded(
          newmpty: servicestoring,
          serviceNameList: state.serviceNameList,
        ),
      );
    }
  }

  serviceaddingbuttonpressed(
      BodyServiceAddingButtonPressed event, Emitter<ServiceState> emit) {
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
