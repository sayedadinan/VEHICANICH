import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/screens/register_screen/registration_velidations.dart';
part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial(buttonpressed: false)) {
    on<Registerbuttonpressed>(registrationbuttonpressed);
  }
  void registrationbuttonpressed(
      Registerbuttonpressed event, Emitter<RegistrationState> emit) {
    emit(RegistrationInitial(buttonpressed: true));
    if (event.formkey.currentState != null &&
        event.formkey.currentState!.validate() &&
        locationvalidation(event.context) &&
        startingtimevalidation(event.context) &&
        closingtimevalidation(event.context) &&
        licenceimagevalidation(event.context) &&
        bannerphotovalidation(event.context) &&
        logoimagevalidation(event.context) &&
        bodyvalidation(event.context) &&
        interiorvalidation(event.context) &&
        enginevalidation(event.context)) {
      emit(Registrationsuccess(buttonpressed: state.buttonpressed));
      print('success');
    } else {
      return;
    }
  }
}
