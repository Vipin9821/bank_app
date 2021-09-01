import 'dart:io';
import 'package:bank_app/models/nav_bar_model.dart';
import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CustomButtomNavBar extends StatefulWidget {
  final List<NavBarItems>? navBarItems;
  final Function? onPressed;
  Duration animationDuration = Duration(milliseconds: 300);
  CustomButtomNavBar({
    @required this.navBarItems,
    @required this.onPressed,
  });
  @override
  _CustomButtomNavBarState createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomButtomNavBar>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35.0),
        topRight: Radius.circular(35.0),
      ),
      elevation: 10.0,
      color: Theme.of(context).canvasColor,
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          // color: Theme.of(context).brightness == Brightness.dark
          //     ? Colors.grey[900]
          //     : Colors.white,

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40.0),
          ),
        ),
        padding: EdgeInsets.only(
            bottom: (Platform.isIOS) ? 22 : 10.0, top: 9, left: 4, right: 4),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _buildNavBarItems(),
        ),
      ),
    );
  }

  List<Widget> _buildNavBarItems() {
    List<Widget> _barItems = [];
    for (int i = 0; i < widget.navBarItems!.length; i++) {
      NavBarItems? barItems = widget.navBarItems![i];
      bool isSelected = _selectedIndex == i;
      _barItems.add(
        InkWell(
          borderRadius: BorderRadius.circular(30.0),
          splashColor: Colors.transparent,
          onTap: () {
            setState(
              () {
                _selectedIndex = i;
                widget.onPressed!(_selectedIndex);
              },
            );
          },
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    barItems.imagePath!,
                    color: isSelected ? kPinkAccentColor : Colors.grey,
                    height: isSelected? 30:20,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return _barItems;
  }
}
