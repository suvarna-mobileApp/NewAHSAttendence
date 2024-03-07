import '../model/login/LoginResponse.dart';

class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoadedState extends LoginState {
  LoginResponse loginResponseList;
  LoginLoadedState(this.loginResponseList);
}

class LoginError extends LoginState {
  String e;
  LoginError(this.e);
}