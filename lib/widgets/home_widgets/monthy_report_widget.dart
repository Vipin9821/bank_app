import 'package:bank_app/repositories/home_carousel_repo.dart';
import 'package:bank_app/screens/stats_detail_screen.dart';
import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:flutter/material.dart';

class MonthlyReportWidget extends StatelessWidget {
  const MonthlyReportWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Monthly Report",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          ...List.generate(
              HomeCarouselRepo().reportData!.length,
              (index) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 18),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, StatsDetailScreen.routeName);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      tileColor: kCarouselbackgroundColor,
                      leading: CircleAvatar(
                        backgroundColor:
                            HomeCarouselRepo().reportData![index].color,
                        child: Center(
                          child:
                              Icon(HomeCarouselRepo().reportData![index].icon),
                        ),
                      ),
                      title: Text(
                          "${HomeCarouselRepo().reportData![index].label}"),
                      subtitle: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: LinearProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                          value: HomeCarouselRepo()
                                  .reportData![index]
                                  .percentage! /
                              100,
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                              "${HomeCarouselRepo().reportData![index].amount}"),
                          Text(
                              "${HomeCarouselRepo().reportData![index].percentage}%")
                        ],
                      ),
                    ),
                  ))
        ],
      ),
    );
  }
}
