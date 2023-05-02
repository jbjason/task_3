import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/models/symptom.dart';

class DetailsSymptomListItem extends StatelessWidget {
  const DetailsSymptomListItem({
    super.key,
    required this.fetchList,
    required this.item,
    required this.group,
    required this.onTap,
  });
  final List<Symptom> fetchList;
  final int group;
  final int item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 13),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image with borders
            Container(
              height: 43,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: fetchList[group].subSymptoms[item].isSelct
                    ? secondaryColor
                    : Colors.white,
                border: Border.all(color: secondaryColor, width: 1.3),
              ),
              child: Image.network(
                fetchList[group].subSymptoms[item].icon,
                fit: BoxFit.contain,
                color: fetchList[group].subSymptoms[item].isSelct
                    ? Colors.white
                    : Colors.grey[400],
              ),
            ),
            const SizedBox(height: 6),
            // symptom title
            Text(
              fetchList[group].subSymptoms[item].title,
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
    );
  }
}
