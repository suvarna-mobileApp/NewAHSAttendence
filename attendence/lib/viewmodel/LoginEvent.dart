abstract class LoginEvent {
  const LoginEvent();
}

class FetchLoginEvent extends LoginEvent {
  final String userName;
  final String password;

  FetchLoginEvent({required this.userName,required this.password});
}