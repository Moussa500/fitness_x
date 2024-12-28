import 'package:fitnest_x/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String icon;
  final void Function()? onPressed;
  const SocialMediaButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.gray3),
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Image.asset(icon),
      ),
    );
  }
}