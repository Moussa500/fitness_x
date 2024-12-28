import 'package:fitnest_x/core/components/app_style.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String label;
  final double size;
  const Header({
    super.key,
    required this.label,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      label,
      style: AppStyle(color: Colors.black, weight: FontWeight.bold, size: size),
    );
  }
}
