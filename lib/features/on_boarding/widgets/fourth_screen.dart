import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/config/constants/AppSizes.dart';
import 'package:fitnest_x/core/components/details.dart';
import 'package:fitnest_x/core/components/header.dart';
import 'package:fitnest_x/core/components/hight_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
                width: Appsizes.getDeviceWidth(context),
                AppVectors.onBoarding3)),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              label: "Eat Well",
              size: 26,
            ),
            HighSpacer(size: 5),
            Details(
              content:
                  "Let's start a healthy lifestyle with us, we can \ndetermine your diet every day. healthy \neating is fun",
              size: 14,
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
