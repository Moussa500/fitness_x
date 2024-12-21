import 'package:flutter/material.dart';

class Appsizes {
  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
