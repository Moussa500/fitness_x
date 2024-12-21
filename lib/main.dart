import 'package:fitnest_x/config/theme/app_theme.dart';
import 'package:fitnest_x/features/on_boarding/pages/on_boarding_page.dart';
import 'package:fitnest_x/features/on_boarding/widgets/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}