import 'package:flutter/material.dart';

class AppStyle extends TextStyle {
  final double size;
  final Color color;
  final FontWeight weight;
  const AppStyle(
      {required this.color, required this.weight, required this.size})
      : super(fontSize: size, fontWeight: weight, color: color);
}
