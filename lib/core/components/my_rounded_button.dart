import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyRoundedButton extends StatelessWidget {
  final String child;
  final double width;
  final void Function()? onTap;
  final double hight;
  const MyRoundedButton({
    super.key,
    required this.onTap,
    required this.child,
    required this.hight,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(17),
        width: width,
        height: hight,
        decoration: BoxDecoration(
          gradient: AppColors.blueLinear,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(AppVectors.next),
      ),
    );
  }
}
