import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/widgets/home_widgets/home_body_top/home_date_picker.dart';
import 'package:task_3/widgets/home_widgets/home_body_top/home_circular_progress.dart';

class HomeProgessCard extends StatelessWidget {
  const HomeProgessCard({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    final double height = size.width > 400 ? 400 : size.width;
    final selectedDate = ValueNotifier<int>(DateTime.now().day - 1);
    return Container(
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(13),
        boxShadow: boxShadow,
      ),
      child: Column(
        children: [
          // date picker
          Container(
            height: size.height * .12,
            decoration:
                BoxDecoration(color: Colors.white, boxShadow: boxShadow),
            child: HomeDatePicker(selectedDate: selectedDate),
          ),
          const SizedBox(height: 20),
          // circular progress
          HomeCircularProgress(height: height, selectedDate: selectedDate),
          // drick tea text
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
