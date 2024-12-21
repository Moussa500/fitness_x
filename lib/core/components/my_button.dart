import 'package:fitnest_x/config/theme/app_colors.dart';
import 'package:fitnest_x/core/components/app_style.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final double width;
  final double hight;
  final String label;

  const MyButton({
    required this.width,
    required this.hight,
    required this.label,
    required this.onTap,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: width,
          height: hight,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: AppColors.blueShadow,
                  offset: Offset(0, 10),
                  blurRadius: 22)
            ],
            borderRadius: BorderRadius.circular(99),
            gradient: AppColors.blueLinear,
          ),
          child: Center(
            child: Text(
              label,
              style: AppStyle(
                  color: Colors.white, weight: FontWeight.bold, size: 16),
            ),
          )),
    );
  }
}
