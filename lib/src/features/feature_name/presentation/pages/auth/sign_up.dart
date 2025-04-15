import 'package:flutter/material.dart';
import 'package:sectortechnology/src/core/constants/app_constants.dart';
import 'package:sectortechnology/src/core/utils/app_colors.dart';
import 'package:sectortechnology/src/core/utils/app_text_style.dart';
import 'package:sectortechnology/src/features/feature_name/data/models/signup_req_params.dart';
import 'package:sectortechnology/src/features/feature_name/domain/usecases/signup_usecase.dart';
import 'package:sectortechnology/src/service_locator.dart';

import '../../../../../core/utils/size.dart';
import '../../widgets/auth/login_with_button.dart';

class SignUp extends StatelessWidget {
   SignUp({super.key});
final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,

      body: Center(
        child: Container(
          child: Column(
            children: [
              82.getH(),
              Text(
                "Регистрация",
                style: AppTextStyle.interRegular.copyWith(fontSize: 24),
              ),
              38.getH(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: AppTextStyle.interRegular.copyWith(fontSize: 12),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2.h, bottom: 14.h),
                    height: 48.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.w),
                      color: AppColors.white,
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Телефон или E-mail",
                      ),
                    ),
                  ),
                  Text(
                    "Забыли пароль?",
                    style: AppTextStyle.interRegular.copyWith(
                      fontSize: 14,
                      color: AppColors.blue,
                    ),
                  ),
                  38.getH(),
                  GestureDetector(
                    onTap: () {
                      sl<SignupUsecase>().call(param: SignupReqParams(otpCode: "otpCode", email: emailController.text.trim()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 2.h, bottom: 14.h),
                      height: 48.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        color: AppColors.cBlue,
                      ),
                      child: Center(
                        child: Text(
                          "Продолжить",
                          style: AppTextStyle.interRegular.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  25.getH(),
                ],
              ),
              Text(
                "Войти  с паролем",
                style: AppTextStyle.interRegular.copyWith(
                  fontSize: 14,
                  color: AppColors.blue,
                ),
              ),
              100.getH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 83.w, child: Divider()),
                  Text(
                    "Войти с помощью",
                    style: AppTextStyle.interRegular.copyWith(fontSize: 14),
                  ),
                  SizedBox(width: 83.w, child: Divider()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                spacing: 10.w,
                children: [
                  LoginWithButton(),
                  LoginWithButton(),
                  LoginWithButton(),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: 24.0,right: 24,top: 81.h),
                child: Text(
                  AppConstants.authText,
                  style: AppTextStyle.interRegular.copyWith(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
