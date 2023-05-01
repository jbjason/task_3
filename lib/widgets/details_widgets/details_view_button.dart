import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/constants/constant2.dart';

class DetailsViewButton extends StatelessWidget {
  const DetailsViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: secondaryColor,
      ),
      child: Row(
        children: [
          getBoxButton('assets/icons/polygon1.png'),
          const SizedBox(width: 15),
          const Text(
            'VIEW ALL SELECTED ITEMS',
            style: TextStyle(color: textSecondaryColor),
          ),
        ],
      ),
    );
  }
}
