import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  static const routeName = "/Wallet-screen";
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(routeName),
      ),
    );
  }
}
