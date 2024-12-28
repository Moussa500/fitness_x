import 'package:flutter/material.dart';

class WidthSpacer extends StatelessWidget {
  final double size;
  const WidthSpacer({super.key, required this.size});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}
