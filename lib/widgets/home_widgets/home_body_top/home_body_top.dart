import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/widgets/home_widgets/home_body_top/home_progress_card.dart';
import 'package:task_3/widgets/home_widgets/home_body_top/home_symptom_card.dart';
import 'package:task_3/widgets/home_widgets/home_body_top/home_group.dart';
import 'package:task_3/widgets/home_widgets/home_body_top/home_category_list.dart';

class HomeBodyTop extends StatelessWidget {
  const HomeBodyTop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 20),
          // group list
          SizedBox(height: size.height * .12, child: const HomeGroup()),
          const SizedBox(height: 30),
          // date & circular progress
          HomeProgessCard(size: size),
          const SizedBox(height: 20),
          // image counter
          _getImageCounter(),
          const SizedBox(height: 40),
          // symptom card list
          HomeSymptomCard(size: size),
          const SizedBox(height: 40),
          // explore text
          _getExploreText(),
          const SizedBox(height: 10),
          // category list
          HomeCategoryList(size: size),
        ],
      ),
    );
  }

  SizedBox _getImageCounter() => SizedBox(
        height: 5,
        child: Center(
          child: Image.asset('assets/icons/sliders.png'),
        ),
      );
  Center _getExploreText() => const Center(
        child: Text(
          'Explore',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textPrimaryColor,
            letterSpacing: 1.3,
          ),
        ),
      );
}
