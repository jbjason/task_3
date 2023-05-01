import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .125,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            5,
            (i) => Container(
              clipBehavior: Clip.none,
              width: 100,
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: cardPrimaryColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: boxShadow,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: Image.asset(categoryImg, fit: BoxFit.contain),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Category ${i + 1}',
                    style:
                        const TextStyle(fontSize: 7, color: textPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
