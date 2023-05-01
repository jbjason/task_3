import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/widgets/details_widgets/details_appbar.dart';
import 'package:task_3/widgets/details_widgets/details_view_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // appBar
                DetailsAppbar(title: title),
                const SizedBox(height: 30),
                for (int i = 0; i < symptomsList.length; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        symptomsList[i].title,
                        style: const TextStyle(
                          color: textPrimaryColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.3,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: List.generate(
                          symptomsList[i].subSymptoms.length,
                          (index) => Container(
                            width: 55,
                            height: 80,
                            margin: const EdgeInsets.symmetric(horizontal: 13),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(color: secondaryColor),
                                  ),
                                  child: Image.network(
                                    symptomsList[i].subSymptoms[index].icon,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  symptomsList[i].subSymptoms[index].title,
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
                      const SizedBox(height: 15),
                    ],
                  ),
                const DetailsViewButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
