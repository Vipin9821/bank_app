import 'package:flutter/material.dart';

class ReportTileModel {
  final String? label;
  final String? amount;
  final int? percentage;
  final IconData? icon;
  final Color? color;
  const ReportTileModel({this.color,this.amount, this.icon, this.label, this.percentage});
}
