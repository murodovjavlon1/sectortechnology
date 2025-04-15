import 'package:get_it/get_it.dart';
import 'package:sectortechnology/src/core/network/dio_client.dart';
import 'package:sectortechnology/src/features/feature_name/data/data_source/auth_api_service.dart';
import 'package:sectortechnology/src/features/feature_name/data/repositories/auth.dart';
import 'package:sectortechnology/src/features/feature_name/domain/repositories/auth_repository.dart';
import 'package:sectortechnology/src/features/feature_name/domain/usecases/signup_usecase.dart';

final sl= GetIt.instance;

void localServiceLocator(){

  sl.registerSingleton<DioClient>(DioClient());

  //Service
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  //Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  //Usecase
  sl.registerSingleton<SignupUsecase>(SignupUsecase());
}