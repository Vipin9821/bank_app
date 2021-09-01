import 'package:bank_app/repositories/stats_overview_repo.dart';
import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:bank_app/utils/constants/widget_contants.dart';
import 'package:bank_app/widgets/rounded_var.dart';
import 'package:bank_app/widgets/stats_screen/stats_goal.dart';
import 'package:flutter/material.dart';

class StatsDetailScreen extends StatelessWidget {
  static const routeName = "/stats-detail";
  const StatsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Text(
                  "Statistics",
                  style: kStatisticsTextStyle,
                ),
                Container(
                  width: 50,
                ),
              ],
            )),
            SliverToBoxAdapter(
              child: Container(margin: const EdgeInsets.all(15),
                  height: 300, child: CustomRoundedBars.withbarData()),
            ),
            SliverToBoxAdapter(
              child: StatsGoal()
            ),
            SliverToBoxAdapter(
              child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Text(
                    "Overview",
                    style:kOverViewTextStyle,
                  )),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                var _data = StatsOverViewRepo().overviewData![index];
                return Container(
                  margin:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: kCarouselbackgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            _data.icon,
                            color: kPinkAccentColor,
                          ),
                          Text(_data.amount.toString(),style: kAmountTextStyle,),
                        ],
                      ),
                      Text(_data.label.toString(),style:kLabelTextStyle)
                    ],
                  ),
                );
              }, childCount: 4),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1,
                mainAxisExtent: 105,
              ),
            )
          ],
        ),
      ),
    );
  }
}
