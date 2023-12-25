
import 'package:clean_arch/features/login/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
class Routes{
  static const String qouteScreen='/qoute';
  static const String favouritQoute='/favourite';
}
class AppRoutes{
  static Route  onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {

      case Routes.qouteScreen:
      default:
        return MaterialPageRoute(
            builder: (context) =>  LoginScreen(), settings: routeSettings);




    }
  }
}