import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';
import 'package:task_3/widgets/home_widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // appBar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.menu, color: secondaryColor),
                    Icon(Icons.notifications_outlined, color: secondaryColor),
                  ],
                ),
                // body
                const HomeBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
