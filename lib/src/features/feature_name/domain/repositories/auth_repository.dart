import 'package:dartz/dartz.dart';
import 'package:sectortechnology/src/features/feature_name/data/models/signup_req_params.dart';

abstract class AuthRepository {
  Future <Either>signUp(SignupReqParams signupReq);
  Future <Either>verifyOtp( SignupReqParams signupReq);


}