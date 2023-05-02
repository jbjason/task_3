import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/models/symptom.dart';
import 'package:task_3/providers/symptoms.dart';
import 'package:task_3/widgets/details_widgets/details_symptom_listitem.dart';

class DetailsSymptomList extends StatelessWidget {
  const DetailsSymptomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<Symptoms>(context, listen: false).fetchProducts(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasError) {
            return const Center(child: Text('Error Occurs'));
          } else {
            final fetchList = Provider.of<Symptoms>(context).symptomsList;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < fetchList.length; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // header tilte
                      Text(
                        fetchList[i].title,
                        style: const TextStyle(
                          color: textPrimaryColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.3,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // symtom img & title
                      _symptomList(context, fetchList, i),
                      const SizedBox(height: 15),
                    ],
                  ),
              ],
            );
          }
        }
      },
    );
  }

  Widget _symptomList(
      BuildContext context, List<Symptom> fetchList, int group) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          fetchList[group].subSymptoms.length,
          (index) => DetailsSymptomListItem(
            fetchList: fetchList,
            group: group,
            item: index,
            onTap: () {
              Provider.of<Symptoms>(context, listen: false)
                  .addSymtomp(group, index);
            },
          ),
        ),
      ),
    );
  }
}
