import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration:
              BoxDecoration(color: cardPrimaryColor, boxShadow: boxShadow),
          child: Image.asset('assets/icons/polygon2.png', fit: BoxFit.contain),
        ),
        title: Text(title),
        actions: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: textSecondaryColor),
            child: const Icon(Icons.question_mark, color: cardPrimaryColor),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(),
          ),
        ),
      ),
    );
  }
}
