part of 'login_bloc.dart';

sealed class LoginButtonState {}

class LoginInitialState extends LoginButtonState {}

class LoginSuccess extends LoginButtonState {}

class LoginError extends LoginButtonState {
  final String error;

  LoginError({required this.error});
}

class LoginLoading extends LoginButtonState {}
