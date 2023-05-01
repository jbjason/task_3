
import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';
import 'package:task_3/widgets/home_widgets/home_painter.dart';

class HomeProgessCard extends StatelessWidget {
  const HomeProgessCard({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    final double height = size.width > 400 ? 400 : size.width;
    return Container(
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(13),
        boxShadow: boxShadow,
      ),
      child: Column(
        children: [
          Container(
            height: size.height * .095,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: boxShadow,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: height - 60,
            width: height - 60,
            padding: const EdgeInsets.all(40),
            child: CustomPaint(
              painter: HomePainter(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1st Day',
                    style: TextStyle(
                      fontSize: 12,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: secondaryColor.withOpacity(.1)),
              child: const Text(
                'Drink Herbal Tea For Cramps',
                style: TextStyle(
                  color: secondaryColor,
                  wordSpacing: 1.5,
                  letterSpacing: 1.2,
                  fontSize: 10,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
