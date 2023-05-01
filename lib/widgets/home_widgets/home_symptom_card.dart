import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';

class HomeSymptomCard extends StatelessWidget {
  const HomeSymptomCard({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getSymptom('assets/icons/add.png', 'Enter Your'),
          _getSymptom('assets/icons/drop.png', 'Log Your'),
        ],
      ),
    );
  }

  Container _getSymptom(String img, String title) => Container(
        width: size.width * .44,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: cardPrimaryColor,
          boxShadow: boxShadow,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 35,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor.withOpacity(.1),
              ),
              child:
                  Image.asset(img, fit: BoxFit.contain, color: secondaryColor),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: textSecondaryColor, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Stmptoms',
                  style: TextStyle(
                      color: textSecondaryColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      );
}
