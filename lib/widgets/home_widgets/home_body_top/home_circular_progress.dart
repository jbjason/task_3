import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/screens/details_screen.dart';
import 'package:task_3/widgets/home_widgets/home_painter.dart';

class HomeCircularProgress extends StatelessWidget {
  const HomeCircularProgress(
      {super.key, required this.selectedDate, required this.height});
  final ValueNotifier selectedDate;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                DetailsScreen(title: '${selectedDate.value + 1}, March'),
          ),
        );
      },
      child: Container(
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
    );
  }
}
