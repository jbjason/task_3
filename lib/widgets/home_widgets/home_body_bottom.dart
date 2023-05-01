import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/widgets/home_widgets/home_demo_card.dart';
import 'package:task_3/widgets/home_widgets/home_partner_card.dart';
import 'package:task_3/widgets/home_widgets/home_premium_list.dart';

class HomeBodyBottom extends StatelessWidget {
  const HomeBodyBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          // demo-app Card
          HomeDemoCard(size: size),
          const SizedBox(height: 40),
          // premium text
          _getPremiumText(),
          const SizedBox(height: 10),
          // premium card list
          HomePremiumList(size: size),
          const SizedBox(height: 30),
          // add partner card
          HomePartnerCard(size: size),
        ],
      ),
    );
  }

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
