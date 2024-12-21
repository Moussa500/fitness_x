import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/config/constants/AppSizes.dart';
import 'package:fitnest_x/core/components/details.dart';
import 'package:fitnest_x/core/components/header.dart';
import 'package:fitnest_x/core/components/hight_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                  width: Appsizes.getDeviceWidth(context),
                  AppVectors.onBoarding1)),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                label: "Track Your Goal",
                size: 26,
              ),
              HighSpacer(size: 5),
              Details(
                content:
                    "Don't worry if you have trouble determining \nyour goals, We can help you determine your \ngoals and track your goals",
                size: 14,
              ),
            ],
          ),
          Spacer(),
        ],
      );
  }
}



