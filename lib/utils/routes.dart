import 'package:bank_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(
          builder: (_) {
            return SplashScreen();
          },
        );
        // break;
      default:
    }
  }
}
