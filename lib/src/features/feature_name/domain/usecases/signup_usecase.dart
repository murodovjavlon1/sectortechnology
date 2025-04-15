
import 'package:dartz/dartz.dart';
import 'package:sectortechnology/src/core/usecases/usecase.dart';
import 'package:sectortechnology/src/features/feature_name/data/models/signup_req_params.dart';
import 'package:sectortechnology/src/features/feature_name/domain/repositories/auth_repository.dart';
import 'package:sectortechnology/src/service_locator.dart';

class SignupUsecase implements Usecase<Either,SignupReqParams>{
  @override
  Future<Either> call({SignupReqParams? param})async {
  
  return sl<AuthRepository>().signUp(param!);
  }


}