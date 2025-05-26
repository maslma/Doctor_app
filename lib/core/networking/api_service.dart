import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/models/login_response.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

// ApiService depends on Dio
// RestApi is used to generate the code for the api calls.(retrofit library)
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);
}
