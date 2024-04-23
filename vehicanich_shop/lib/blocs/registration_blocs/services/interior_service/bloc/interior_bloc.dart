import 'package:bloc/bloc.dart';
part 'interior_event.dart';
part 'interior_state.dart';

class InteriorBloc extends Bloc<InteriorEvent, InteriorState> {
  InteriorBloc()
      : super(InteriorInitial(newmpty: [], serviceNameList: [
          'interior detailing',
          'Dashboard Refining',
          'Headliner Repair',
          'Upholstery Repair'
        ])) {
    on<InteriorEnableButtonPressed>(interiorenablebuttonpressed);
    on<InteriorServiceAddingButtonPressed>(interiorserviceaddingbuttonpressed);
  }
  interiorenablebuttonpressed(
      InteriorEnableButtonPressed event, Emitter<InteriorState> emit) {
    List<String> servicestoring = [...state.newmpty];
    if (servicestoring.contains(event.serviceName)) {
      print('nadakoolaa in interior');
      servicestoring.remove(event.serviceName);
      emit(InteriorServiceremove(
          newmpty: servicestoring, serviceNameList: state.serviceNameList));
    } else {
      servicestoring.add(event.serviceName);
      emit(
        InteriorEnableBUttonValueAdded(
          newmpty: servicestoring,
          serviceNameList: state.serviceNameList,
        ),
      );
    }
  }

  interiorserviceaddingbuttonpressed(
      InteriorServiceAddingButtonPressed event, Emitter<InteriorState> emit) {
    try {
      List<String> cardTexts = [];
      if (cardTexts.contains(event.newservicename)) {
        print('value already exists');
      } else {
        print('worked');
        cardTexts.add(event.newservicename);
        state.serviceNameList.addAll(cardTexts);
        emit(InteriorInitial(
          newmpty: state.newmpty,
          serviceNameList: state.serviceNameList,
        ));
      }
    } catch (error, stackTrace) {
      print('Error occurred: $error');
      print('Stack trace: $stackTrace');
    }
  }
}
