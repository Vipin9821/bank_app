import 'package:bank_app/models/home_carousel_model.dart';
import 'package:bank_app/models/report_tile_model.dart';
import 'package:bank_app/utils/constants/col0r_contants.dart';
import 'package:flutter/material.dart';

class HomeCarouselRepo {
  List<HomeCarouselModel> carouselData = [
    HomeCarouselModel(
        amount: "\$ 12,000",
        cartNumber: "**** **** **** 5716",
        imagePath: "assets/images/mc.png"),
    HomeCarouselModel(
        amount: "\$ 52,000",
        cartNumber: "**** **** **** 5778",
        imagePath: "assets/images/visa.png"),
    HomeCarouselModel(
        amount: "\$ 22,000",
        cartNumber: "**** **** **** 8516",
        imagePath: "assets/images/rupay.png"),
  ];

  List<ReportTileModel>? reportData = [
    ReportTileModel(
      label: "Incomes",
      amount: "+7,500",
      percentage: 75,
      icon: Icons.download,
      color: kPinkAccentColor
    ),
      ReportTileModel(
      label: "Outcomes",
      amount: "-2,500",
      percentage: 25,
      color: kBlueAccentColor,
      icon: Icons.upload,
    ),
  ];
}
