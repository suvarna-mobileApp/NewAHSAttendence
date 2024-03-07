import 'package:attendence/viewmodel/LoginState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/login/LoginResponse.dart';
import '../repository/LoginRepository.dart';
import 'LoginEvent.dart';

class LoginViewModel extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository = LoginRepository();

  LoginViewModel(LoginState initialState) : super(initialState);

  LoginState get initialState {
    return LoginState();
  }

  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is FetchLoginEvent) {
      yield LoginLoading();
      try {
        Map<String, dynamic> body = {
          "_userName": event.userName,
          "_password": event.password
        };

        print(body);
        LoginResponse fetchPost = await loginRepository.getLogin(body);
        yield LoginLoadedState(fetchPost);
        print(fetchPost);
      } catch (e) {
        print("error msg ${e.toString()}");
        yield LoginError(e.toString());
      }
    }
  }
}
