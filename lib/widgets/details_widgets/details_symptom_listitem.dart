import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/models/symptom.dart';

class DetailsSymptomListItem extends StatelessWidget {
  const DetailsSymptomListItem(
      {super.key, required this.fetchList, required this.i});
  final List<Symptom> fetchList;
  final int i;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          fetchList[i].subSymptoms.length,
          (index) => Container(
            width: 55,
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // image with borders
                Container(
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: secondaryColor),
                  ),
                  child: Image.network(
                    fetchList[i].subSymptoms[index].icon,
                    fit: BoxFit.contain,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(height: 6),
                // symptom title
                Text(
                  fetchList[i].subSymptoms[index].title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: textPrimaryColor,
                    fontSize: 9,
                    letterSpacing: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
