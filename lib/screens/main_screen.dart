import 'package:bank_app/repositories/nav_bar_repo.dart';
import 'package:bank_app/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const routeName = "/main-screen";
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtomNavBar(
          navBarItems: NavBarRepo().items,
          onPressed: (index) {
          setState(() {
             _selectedIndex = index;
          }); 
          }),
          body: NavBarRepo().items![_selectedIndex].onPressed,
    );
  }
}
