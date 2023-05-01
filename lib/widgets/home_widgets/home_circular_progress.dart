import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';
import 'package:task_3/widgets/home_widgets/home_painter.dart';

class HomeCircularProgress extends StatelessWidget {
  const HomeCircularProgress({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
