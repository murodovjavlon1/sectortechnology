import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sectortechnology/src/routes.dart';



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.signUp,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}