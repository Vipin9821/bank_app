import 'package:bank_app/repositories/boarding_screen_repo.dart';
import 'package:bank_app/screens/main_screen.dart';
import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:bank_app/widgets/splash_widget/stack_widget.dart';
import 'package:flutter/material.dart';

class BoardingScreen extends StatelessWidget {
  static const routeName = "/boarding-screen";
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kSplashBackgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, MainScreen.routeName);
        },
        child: Container(
            alignment: Alignment.center,
            height: 15,
            width: 15,
            child: Center(
              child: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            )),
        backgroundColor: Colors.white,
      ),
      body: SplashStackWidget(
        infoLine: Positioned(
          bottom: 75,
          left: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                BoardingRepo().mainHeadLine,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: size.width * 0.8,
                child: Text(
                  BoardingRepo().subHeadLine,
                  style: TextStyle(
                      fontSize: 15.5,
                      // fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
