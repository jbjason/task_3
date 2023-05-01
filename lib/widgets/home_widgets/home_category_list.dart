import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .15,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            5,
            (i) => Container(
              width: 100,
              margin: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: cardPrimaryColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12, width: .35),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[100],
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
