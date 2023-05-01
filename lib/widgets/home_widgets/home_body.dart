import 'package:flutter/material.dart';
import 'package:task_3/widgets/home_widgets/home_group.dart';
import 'package:task_3/widgets/home_widgets/home_progress_card.dart';

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
        HomeProgessCard(size: size),
      ],
    );
  }
}
