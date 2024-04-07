import 'package:bloc/bloc.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingblocEvent, OnboardingBlocState> {
  OnboardingBloc() : super(Initialblocstate()) {
    on<NextButtonPressed>(nextButtonPressed);
  }
  nextButtonPressed(
      NextButtonPressed event, Emitter<OnboardingBlocState> emit) {}
}
