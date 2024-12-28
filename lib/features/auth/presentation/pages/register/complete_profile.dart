import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/core/components/app_style.dart';
import 'package:fitnest_x/core/components/header.dart';
import 'package:fitnest_x/core/components/hight_spacer.dart';
import 'package:fitnest_x/core/components/my_drop_down.dart';
import 'package:fitnest_x/features/auth/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        double? headerSize;
        double? descSize;
        if (constraints.maxWidth < 370) {
          headerSize = 18;
          descSize = 10;
        } else {
          headerSize = 20;
          descSize = 12;
        }
        return Column(
          children: [
            SvgPicture.asset(AppVectors.CompleteProfile),
            HighSpacer(size: 30),
            Center(
                child: Header(
                    label: "Let's complete your profile", size: headerSize)),
            Text(
              "It will helps us to know more about you!",
              style: AppStyle(
                  color: Color(0xff7B6F72),
                  weight: FontWeight.w400,
                  size: descSize),
            ),
            HighSpacer(size: 30),
            MyDropDown(
              icon:SvgPicture.asset(AppVectors.gender) ,
              items: [
              DropdownMenuItem(
                
                child: Text("Male"),
                value: "Male",
              ),
              DropdownMenuItem(value: "Female", child: Text("Female"))
            ], onChanged: (value) {}, hint: "Choose a gender"),
            
          ],
        );
      }),
    );
  }
}
