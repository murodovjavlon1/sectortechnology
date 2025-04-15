import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sectortechnology/src/core/constants/api_url.dart';
import 'package:sectortechnology/src/core/network/dio_client.dart';
import 'package:sectortechnology/src/features/feature_name/data/models/signup_req_params.dart';
import 'package:sectortechnology/src/service_locator.dart';

abstract class AuthApiService {
  Future<Either> signUp(SignupReqParams signupReq);
   Future<Either> verifyOtp(SignupReqParams verifyOtpReq);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signUp(SignupReqParams signupReq) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrl.register,
        data: signupReq.toJson(),
      );
      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data["message"]);
    }
  }

    @override
  Future<Either> verifyOtp(SignupReqParams signupReq) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrl.verifyOtp,
         data: signupReq.toJson(),
      );
      return Right(response);
    } on DioException catch (e) {
      return Left(e.response?.data["message"] ?? "OTP xatolik");
    }
  }

}
