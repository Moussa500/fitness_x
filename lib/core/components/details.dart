import 'package:fitnest_x/config/theme/app_colors.dart';
import 'package:fitnest_x/core/components/app_style.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final double size;
  final String content;
  const Details({super.key, required this.content, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style:
          AppStyle(color: AppColors.gray1, weight: FontWeight.w400, size: size),
    );
  }
}
