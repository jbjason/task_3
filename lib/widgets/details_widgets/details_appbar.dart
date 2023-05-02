import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/constants/constant2.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // back button
        InkWell(
          onTap: () => Navigator.pop(context),
          child: getBoxButton('assets/icons/polygon2.png'),
        ),
        // title
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1.4,
          ),
        ),
        // question container
        Container(
          padding: const EdgeInsets.all(5),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
          child: const Icon(
            Icons.question_mark,
            color: cardPrimaryColor,
          ),
        ),
      ],
    );
  }
}
