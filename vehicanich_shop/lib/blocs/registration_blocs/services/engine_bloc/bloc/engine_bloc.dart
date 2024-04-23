import 'package:bloc/bloc.dart';

part 'engine_event.dart';
part 'engine_state.dart';

class EngineBloc extends Bloc<EngineEvent, EngineState> {
  EngineBloc()
      : super(EngineInitial(newmpty: [], serviceNameList: [
          'Engine Diagnostics',
          'Engine Overhaul/Rebuild',
          'Fuel System Service',
          'Engine Mount Replacement'
        ])) {
    on<EngineEnableButtonPressed>(engineenablebuttonpressed);
    on<EngineServiceAddingButtonPressed>(engineserviceaddingbuttonpressed);
  }
  engineenablebuttonpressed(
      EngineEnableButtonPressed event, Emitter<EngineState> emit) {
    List<String> servicestoring = [...state.newmpty];
    if (servicestoring.contains(event.serviceName)) {
      print('nadakoolaa');
      servicestoring.remove(event.serviceName);
      emit(EngineServiceremove(
          newmpty: servicestoring, serviceNameList: state.serviceNameList));
    } else {
      servicestoring.add(event.serviceName);
      emit(
        EngineEnableBUttonValueAdded(
          newmpty: servicestoring,
          serviceNameList: state.serviceNameList,
        ),
      );
    }
  }

  engineserviceaddingbuttonpressed(
      EngineServiceAddingButtonPressed event, Emitter<EngineState> emit) {
    List<String> cardTexts = [];
    if (cardTexts.contains(event.newservicename)) {
      print('value already exist');
    } else {
      cardTexts.add(event.newservicename);
      state.serviceNameList.addAll(cardTexts);
      emit(EngineInitial(
        newmpty: state.newmpty,
        serviceNameList: state.serviceNameList,
      ));
    }
  }
}
