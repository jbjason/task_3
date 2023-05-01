import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';
import 'package:task_3/widgets/home_widgets/home_category_list.dart';
import 'package:task_3/widgets/home_widgets/home_demo_card.dart';
import 'package:task_3/widgets/home_widgets/home_group.dart';
import 'package:task_3/widgets/home_widgets/home_offer_list.dart';
import 'package:task_3/widgets/home_widgets/home_partner_card.dart';
import 'package:task_3/widgets/home_widgets/home_premium_list.dart';
import 'package:task_3/widgets/home_widgets/home_progress_card.dart';
import 'package:task_3/widgets/home_widgets/home_symptom_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
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
        const SizedBox(height: 20),
        // category list
        HomeCategoryList(size: size),
        const SizedBox(height: 30),
        // offer img
        HomeOfferList(size: size),
        const SizedBox(height: 20),
        // demo-app Card
        HomeDemoCard(size: size),
        const SizedBox(height: 40),
        // premium text
        _getPremiumText(),
        const SizedBox(height: 30),
        // premium card list
        HomePremiumList(size: size),
        const SizedBox(height: 20),
        // add partner card
        HomePartnerCard(size: size),
      ],
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
  Center _getPremiumText() => const Center(
        child: Text(
          'Unlock Premium',
          style: TextStyle(
            color: secondaryColor,
            letterSpacing: 1.3,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
