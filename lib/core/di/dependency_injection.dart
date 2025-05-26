import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/dio_factory.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doctor_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
 // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

 // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signUp
  // registerLazySingleton -> كل ما اجي استخدمه او احتاجه انشأه مرة وحدة فقط
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  // registerFactory -> كل ما اجي انده او احتاج او استخدم انشا حاجة جديدة
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
