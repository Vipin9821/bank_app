import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:flutter/material.dart';

class GoalWidget extends StatelessWidget {
  const GoalWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kCarouselbackgroundColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create a new goal",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Reach more goals",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [kPinkAccentColor, kBlueAccentColor])),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}