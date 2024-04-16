import 'package:flutter_bloc/flutter_bloc.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBLoc extends Bloc<LocationEvent, LocationState> {
  LocationBLoc() : super(LocationInitialState()) {
    on<LocationButtonPressed>(locationbuttonpressed);
  }
  locationbuttonpressed(
      LocationButtonPressed event, Emitter<LocationState> emit) {
    emit(LocationFetching());
    emit(NavigateToLocation());
  }
}
