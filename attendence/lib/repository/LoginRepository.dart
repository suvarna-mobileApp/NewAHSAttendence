import 'package:dio/dio.dart';

import '../services/WebServices.dart';

class LoginRepository {
  static final LoginRepository _singletonUserRepository =
  LoginRepository._internal();

  factory LoginRepository() {
    return _singletonUserRepository;
  }

  LoginRepository._internal();

  Future<dynamic> getLogin(Map<String, dynamic> body) async {
    print(body);
    return await RestClient(Dio()).login(body);
  }
}