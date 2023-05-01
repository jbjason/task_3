import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';

class HomeDemoCard extends StatelessWidget {
  const HomeDemoCard({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .25,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: cardPrimaryColor,
        borderRadius: BorderRadius.circular(7),
        boxShadow: boxShadow,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              SizedBox(height: 30),
              Text(
                'Demo APP',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  letterSpacing: 1.3,
                  wordSpacing: 1.5,
                ),
              ),
              SizedBox(height: 10),
              Text(
                demoDetailText,
                style: TextStyle(color: textSecondaryColor, fontSize: 10.5),
              ),
            ],
          ),
          Positioned(
            right: -5,
            bottom: 0,
            height: size.height * .12,
            child: Image.asset(
              'assets/images/cover1.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
