import 'package:flutter/material.dart';

class HighSpacer extends StatelessWidget {
  final double size;
  const HighSpacer({super.key, required this.size});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}
