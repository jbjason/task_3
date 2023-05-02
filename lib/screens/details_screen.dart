import 'package:flutter/material.dart';
import 'package:task_3/widgets/details_widgets/details_appbar.dart';
import 'package:task_3/widgets/details_widgets/details_symptom_list.dart';
import 'package:task_3/widgets/details_widgets/details_view_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // appBar
                DetailsAppbar(title: title),
                const SizedBox(height: 30),
                const DetailsSymptomList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const DetailsViewButton(),
    );
  }
}
