import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:bank_app/utils/constants/theme_contants.dart';
import 'package:bank_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/splash_bloc/splash_bloc.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashBloc(),
        )
      ],
      child: MaterialApp(
        title: "Assigned Task",
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          canvasColor: kGlobalCanvasColor,
          fontFamily: fontFamily,
          brightness: Brightness.dark,
          accentColor: kPinkAccentColor,
        ),
        home: SplashScreen(),
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
