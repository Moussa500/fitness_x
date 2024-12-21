import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/core/components/hight_spacer.dart';
import 'package:fitnest_x/core/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: SvgPicture.asset(AppVectors.logo),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: MyButton(
              width: 315,
              hight: 60,
              label: "Get Started",
              onTap: () {},
            ),
          ),
          HighSpacer(size: 20),
        ],
      ),
    );
  }
}
