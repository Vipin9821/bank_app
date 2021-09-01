import 'package:bank_app/models/sample_bar_model.dart';
import 'package:bank_app/models/stats_overvire_model.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class StatsOverViewRepo {
   static List<Series<SampleBarModel, String>> barData() {
    final data = [
       SampleBarModel('Jan', 48),
       SampleBarModel('Feb', 25),
       SampleBarModel('Mar', 100),
       SampleBarModel('Apr', 75),
    ];

    return [
      new Series<SampleBarModel, String>(
        id: 'Sales',
        colorFn: (_, __) => MaterialPalette.lime.shadeDefault,
        domainFn: (SampleBarModel sales, _) => sales.goals,
        measureFn: (SampleBarModel sales, _) => sales.progress,
        data: data,
      )
    ];
  }
  List<StatsOverviewModel>? overviewData = [
    StatsOverviewModel(
      icon: Icons.star,
      label: "Active Goals",
      amount: "4",
    ),
       StatsOverviewModel(
      icon: Icons.wallet_giftcard,
      label: "Transaction",
      amount: "12",
    ),
       StatsOverviewModel(
      icon: Icons.money,
      label: "Money Saved",
      amount: "22%",
    ),
       StatsOverviewModel(
      icon: Icons.download_outlined,
      label: "Revenue",
      amount: "+10%",
    ),
  ];
}
