import 'package:bank_app/controllers/splash_bloc/splash_bloc.dart';
import 'package:bank_app/repositories/boarding_screen_repo.dart';
import 'package:bank_app/screens/boarding_screen.dart';
import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:bank_app/utils/constants/widget_contants.dart';
import 'package:bank_app/widgets/splash_widget/stack_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/splash-screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    BlocProvider.of<SplashBloc>(context).add(LoadBoardingEvent());
    return Scaffold(
      backgroundColor: kSplashBackgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(height: 15, width: 15, child: progessIndicator),
        backgroundColor: Colors.white,
      ),
      body: BlocListener<SplashBloc, SplashState>(
        bloc: BlocProvider.of<SplashBloc>(context),
        listener: (context, state) {
          if (state is SplashLoadedState) {
            Navigator.pushReplacementNamed(context, BoardingScreen.routeName);
          }
        },
        child: SplashStackWidget(
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
      ),
    );
  }
}
