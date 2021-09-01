import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  static const routeName = "/Stats-screen";
  const StatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(routeName),
      ),
    );
  }
}
