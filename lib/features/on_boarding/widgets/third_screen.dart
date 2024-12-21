import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/config/constants/AppSizes.dart';
import 'package:fitnest_x/core/components/details.dart';
import 'package:fitnest_x/core/components/header.dart';
import 'package:fitnest_x/core/components/hight_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
                width: Appsizes.getDeviceWidth(context),
                AppVectors.onBoarding2)),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              label: "Get Burn",
              size: 26,
            ),
            HighSpacer(size: 5),
            Details(
              content:
                  "Let’s keep burning, to achive yours goals, \nit hurts only temporarily, if you give up now \nyou will be in pain forever",
              size: 14,
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
