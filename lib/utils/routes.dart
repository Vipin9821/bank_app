import 'package:bank_app/screens/boarding_screen.dart';
import 'package:bank_app/screens/main_screen.dart';
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
           case BoardingScreen.routeName:
        return MaterialPageRoute(
          builder: (_) {
            return BoardingScreen();
          },
        );
            case MainScreen.routeName:
        return MaterialPageRoute(
          builder: (_) {
            return MainScreen();
          },
        );
        // break;
      default:
    }
  }
}
