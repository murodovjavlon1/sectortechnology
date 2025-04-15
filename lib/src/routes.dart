import 'package:flutter/material.dart';
import 'package:sectortechnology/src/features/feature_name/presentation/pages/auth/sign_up.dart';


class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.signUp:
        return navigate( SignUp());
      // case RouteNames.onBoarding:
      //   return navigate(const OnBoardingScreen());
      // case RouteNames.sign_in:
      //   return navigate(const SignInScreen());
      // case RouteNames.sign_up:
      //   return navigate(const SignUpScreen());
      // case RouteNames.otpScreen:
      //   return navigate(const OtpScreen());
      // case RouteNames.shop:
      //   return navigate(const ShopScreen());
      // case RouteNames.favouriteList:
      //   return navigate(const FavouriteListScreen());
      // case RouteNames.favouriteDishes:
      //   return navigate(const FavouriteDishesScreen());

      default:
        return navigate(
          const Scaffold(body: Center(child: Text('This page does not exist'))),
        );
    }
  }

  static navigate(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
}
 class RouteNames {
  static const String signUp = "signUp";
 }