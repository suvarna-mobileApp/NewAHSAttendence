import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/login/LoginResponse.dart';
part 'WebServices.g.dart';

@RestApi(baseUrl: "https://ahsca7486d9b32c9b0ddevaos.axcloud.dynamics.com/api/services/AHSMobileServices/AHSMobileService/")
abstract class RestClient {
  factory RestClient (Dio dio, {String baseUrl}) = _RestClient;

  @POST('AHSAuthentication')
  Future<LoginResponse> login(@Body() Map<String, dynamic> body);

}