import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:flutter/material.dart';

class StatsGoal extends StatelessWidget {
  const StatsGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 120,
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: kCarouselbackgroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Goal is in Progress",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Reach more goals",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Positioned(
              right: 50,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: kCarouselbackgroundColor,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: CircularProgressIndicator(
                        value: .55,
                        backgroundColor: kPinkAccentColor,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            kSplashBackgroundColor),
                      ),
                    ),
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Color(0xff595861),
                      child: Center(
                        child: Text(
                          "55%",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
