import 'package:flutter/material.dart';


class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case RouteNames.splash:
      //   return navigate(const SplashScreen());
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
