import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';
import 'package:task_3/widgets/home_widgets/home_body_bottom.dart';
import 'package:task_3/widgets/home_widgets/home_body_top.dart';
import 'package:task_3/widgets/home_widgets/home_navbar.dart';
import 'package:task_3/widgets/home_widgets/home_offer_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navItem = ValueNotifier<int>(0);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu, color: secondaryColor),
        actions: const [
          Icon(Icons.notifications_outlined, color: secondaryColor),
          SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              HomeBodyTop(),
              SizedBox(height: 30),
              // offer img
              HomeOfferList(),
              SizedBox(height: 30),
              HomeBodyBottom(),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeNavBar(selected: navItem),
    );
  }
}
