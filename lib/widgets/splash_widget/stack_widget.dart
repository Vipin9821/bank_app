import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashStackWidget extends StatelessWidget {
  final Widget? infoLine;
  const SplashStackWidget({Key? key,this.infoLine}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left: size.width * 0.25,
          top: -45,
          child: SvgPicture.asset(
            'assets/circle.svg',
            height: 150,
            color: Color(0xffa4a1d9),
          ),
        ),
        Positioned(
          left: size.width * 0.54,
          top: -15,
          child: SvgPicture.asset(
            'assets/whiteCircle.svg',
            height: 80,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: -45,
          child: SvgPicture.asset(
            'assets/circle.svg',
            height: 150,
            color: Color(0xfff6c6c2),
          ),
        ),
        Positioned(
          left: 15,
          top: size.height * 0.4995,
          child: SvgPicture.asset(
            'assets/circle.svg',
            height: 120,
            color: Color(0xffa4a1d9),
          ),
        ),
        Positioned(
          right: -45,
          top: size.height * 0.295,
          child: SvgPicture.asset(
            'assets/circle.svg',
            height: 150,
            color: Color(0xfff6c6c2),
          ),
        ),
        Positioned(
          right: 15,
          top: size.height * 0.295,
          child: SvgPicture.asset(
            'assets/circle.svg',
            height: 120,
            color: Color(0xffa4a1d9),
          ),
        ),
        infoLine!
      ],
    );
  }
}
