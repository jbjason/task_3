import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/constants/constant2.dart';

class HomeDatePicker extends StatelessWidget {
  const HomeDatePicker({super.key, required this.selectedDate});
  final ValueNotifier selectedDate;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          31,
          (i) {
            return InkWell(
              onTap: () => selectedDate.value = i,
              child: FittedBox(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // week day
                      Text(
                        weeks[i % weeks.length],
                        style: const TextStyle(
                          color: textSecondaryColor,
                          fontSize: 11,
                          letterSpacing: 1.2,
                        ),
                      ),
                      ValueListenableBuilder(
                        valueListenable: selectedDate,
                        builder: (context, date, _) => Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                date == i ? secondaryColor : Colors.transparent,
                          ),
                          child: Text(
                            '${i + 1}',
                            style: TextStyle(
                                color: date == i
                                    ? cardPrimaryColor
                                    : textPrimaryColor,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
