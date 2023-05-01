import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/widgets/home_widgets/home_circular_progress.dart';

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
          HomeCircularProgress(height: height),
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
