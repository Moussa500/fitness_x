import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/core/components/my_rounded_button.dart';
import 'package:fitnest_x/features/on_boarding/widgets/fifth_screen.dart';
import 'package:fitnest_x/features/on_boarding/widgets/fourth_screen.dart';
import 'package:fitnest_x/features/on_boarding/widgets/second_screen.dart';
import 'package:fitnest_x/features/on_boarding/widgets/third_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final List<Widget> screens = [SecondScreen(), ThirdScreen(),FourthScreen(),FifthScreen()];
  double progressFraction = 0.25;
  PageController controller =  PageController();
  void nextPage() {
    setState(() {
      if (progressFraction < 1.0) {
        progressFraction += 0.25;
        controller.nextPage(
            duration: Duration(seconds: 1), curve: Curves.easeInOut);
      } else {
        progressFraction = 0.25;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: screens.length,
                itemBuilder: (context, index) {
                  return screens[index];
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 65,
                  width: 65,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomPaint(
                        size: const Size(65, 65),
                        painter: Progress(progressFraction),
                      ),
                      MyRoundedButton(
                        onTap: nextPage,
                        hight: 50,
                        width: 50,
                        child: AppVectors.next,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Progress extends CustomPainter {
  final double fraction;
  Progress(this.fraction);
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 3.0;
    double radius = (size.width - strokeWidth) / 2;
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: radius),
      -90 * (3.14 / 180),
      360 * fraction * (3.14 / 180),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
