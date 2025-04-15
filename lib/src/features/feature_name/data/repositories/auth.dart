import 'package:dartz/dartz.dart';
import 'package:sectortechnology/src/features/feature_name/data/data_source/auth_api_service.dart';
import 'package:sectortechnology/src/features/feature_name/data/models/signup_req_params.dart';
import 'package:sectortechnology/src/features/feature_name/domain/repositories/auth_repository.dart';
import 'package:sectortechnology/src/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  Future<Either> signUp(SignupReqParams signupReq)async {
  return sl<AuthApiService>().signUp(signupReq);
  }

  
  @override
  Future<Either> verifyOtp(SignupReqParams verifyOtpReq) async {
    return sl<AuthApiService>().verifyOtp(verifyOtpReq);
  }
}