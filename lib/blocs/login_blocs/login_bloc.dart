import 'package:bloc/bloc.dart';
import 'package:vehicahich_admin/utils/constant_variables/textcontrollers.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBLoc extends Bloc<LoginButtonEvent, LoginButtonState> {
  LoginBLoc() : super(LoginInitialState()) {
    on<LoginButtonPressed>(loginbuttonpressed);
  }
  loginbuttonpressed(LoginButtonPressed event, Emitter<LoginButtonState> emit) {
    emit(LoginLoading());
    const String username = 'adnan123';
    const String password = '123456';
    try {
      if (username == usernameController.text &&
          password == passwordController.text) {
        emit(LoginSuccess());
      } else {
        print('not correct');
      }
    } catch (e) {
      emit(LoginError(error: 'error in login $e'));
    }
  }
}
