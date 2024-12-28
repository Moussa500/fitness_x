import 'package:fitnest_x/config/constants/AppSizes.dart';
import 'package:fitnest_x/config/theme/app_colors.dart';
import 'package:fitnest_x/core/components/app_style.dart';
import 'package:flutter/material.dart';

class MyDropDown extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>>? items;
  final Widget? icon;
  final void Function(dynamic)? onChanged;
  final String hint;
  const MyDropDown(
      {super.key,
      this.icon,
      required this.items,
      required this.onChanged,
      required this.hint});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(15),
      width: Appsizes.getDeviceWidth(context) * .8,
      decoration: BoxDecoration(
          color: AppColors.borderColor,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: DropdownButton(
        icon: icon,
          style: AppStyle(
              color: AppColors.gray1, weight: FontWeight.w400, size: 14),
          dropdownColor: AppColors.borderColor,
          underline: Container(),
          borderRadius: BorderRadius.all(Radius.circular(14)),
          hint: Text(hint),
          isExpanded: true,
          items: items,
          onChanged: onChanged),
      
    );
  }
}
