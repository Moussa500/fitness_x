import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/config/constants/AppSizes.dart';
import 'package:fitnest_x/core/components/details.dart';
import 'package:fitnest_x/core/components/header.dart';
import 'package:fitnest_x/core/components/hight_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
                width: Appsizes.getDeviceWidth(context),
                AppVectors.onBoarding4)),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              label: "Improve Sleep  Quality",
              size: 26,
            ),
            HighSpacer(size: 5),
            Details(
              content:
                  "Improve the quality of your sleep with us, \ngood quality sleep can bring a good mood \nin the morning",
              size: 14,
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
