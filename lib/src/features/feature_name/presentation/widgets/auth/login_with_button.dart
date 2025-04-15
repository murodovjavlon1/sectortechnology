import 'package:flutter/material.dart';
import 'package:sectortechnology/src/core/utils/size.dart';

import '../../../../../core/utils/app_colors.dart';

class LoginWithButton extends StatelessWidget {
  const LoginWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.w),
        color: AppColors.white,
      ),
      child: Center(child: Image.asset("assets/image/google.png",height: 24.h,)),
    );
  }
}
