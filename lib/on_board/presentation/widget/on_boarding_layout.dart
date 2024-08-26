import 'package:flutter/material.dart';

import '../../../global/presentation/constants/app_colors.dart';
import '../../../global/presentation/widget/texts/my_text.dart';

class OnBoardingLayout extends StatelessWidget {
  const OnBoardingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
            decoration: const BoxDecoration(
              color: secondaryDark,
            ),
          ),
          Image.asset("assets/images/house_1.jpg"),
          Positioned(
            top: constraints.maxHeight * .6,
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomPaint(
              painter: MyCustomPainter(),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Column(
                  children: [
                    MyText.h1("text"),
                    MyText.regular("text"),
                    Row(children: [],),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    var path = Path()..moveTo(0, size.height);

    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width * .5, size.height * -.5, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
