import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  static const routeName = "/email-screen";
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(routeName),),
    );
  }
}
