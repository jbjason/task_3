import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/constants/constant2.dart';
import 'package:task_3/providers/symptoms.dart';
import 'package:task_3/widgets/details_widgets/details_symptom_listitem.dart';

class DetailsViewButton extends StatelessWidget {
  const DetailsViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final data = Provider.of<Symptoms>(context, listen: false);
        final selectedList = data.selectedSymptoms;
        final fetchList = data.symptomsList;
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Selected Symptoms"),
            content: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  selectedList.length,
                  (index) {
                    return DetailsSymptomListItem(
                      fetchList: fetchList,
                      item: selectedList[index].item,
                      group: selectedList[index].group,
                      onTap: () {},
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: secondaryColor,
        ),
        child: Row(
          children: [
            // polygon icon
            getBoxButton('assets/icons/polygon1.png'),
            const SizedBox(width: 15),
            // view... text
            const Text(
              'VIEW ALL SELECTED ITEMS',
              style: TextStyle(color: textSecondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
