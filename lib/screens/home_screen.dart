import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:bank_app/widgets/home_widgets/carousel_tile.dart';
import 'package:bank_app/widgets/home_widgets/goal_widget.dart';
import 'package:bank_app/widgets/home_widgets/monthy_report_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home-screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 390,
            decoration: BoxDecoration(
                color: kCarouselbackgroundColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: CarouselTile()
          ),
        ),
        SliverToBoxAdapter(
          child: GoalWidget()
        ),
        SliverToBoxAdapter(
          child: MonthlyReportWidget()
        ),
      ],
    ));
  }
}
