import 'package:bank_app/utils/constants/theme_contants.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme:ThemeData(
        fontFamily:fontFamily,
      ) ,
      home: SplashScreen(),
      
    );
  }
}