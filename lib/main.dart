import 'package:fitnest_x/config/theme/app_theme.dart';
import 'package:fitnest_x/features/auth/presentation/pages/register/complete_profile.dart';
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
      home: CompleteProfile(),
    );
  }
}