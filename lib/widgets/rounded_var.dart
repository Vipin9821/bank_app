import 'package:bank_app/repositories/stats_overview_repo.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class CustomRoundedBars extends StatelessWidget {
  final List<Series<dynamic, String>>? seriesList;
  final bool? animate;

  CustomRoundedBars({this.seriesList, this.animate});
  factory CustomRoundedBars.withbarData() {
    return new CustomRoundedBars(
      seriesList: StatsOverViewRepo.barData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BarChart(
      seriesList!,
      animate: animate,
      defaultRenderer: new BarRendererConfig(
        cornerStrategy: const ConstCornerStrategy(16),
      ),
    );
  }
}


