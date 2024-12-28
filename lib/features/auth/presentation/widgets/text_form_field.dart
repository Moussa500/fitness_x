import 'package:fitnest_x/config/constants/AppSizes.dart';
import 'package:fitnest_x/core/components/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyTextFormField extends StatelessWidget {
  final String label;
  final String? Function(String?)? validator;
  final ValueChanged<String?> onSaved;
  final String asset;
  final String? initialValue;
  const MyTextFormField({
    required this.label,
    required this.validator,
    required this.initialValue,
    required this.onSaved,
    required this.asset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Appsizes.getDeviceWidth(context) * 0.9,
      height: 80,
      child: TextFormField(
        initialValue: initialValue,
        validator: validator,
        onSaved: onSaved,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(asset),
          ),
          hintText: label,
          hintStyle: AppStyle(
            color: Color(0xffADA4A5),
            weight: FontWeight.w400,
            size: 18,
          ),
          fillColor: Color(0xffF7F8F8),
          filled: true,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.red),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
