import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';

class HomePartnerCard extends StatelessWidget {
  const HomePartnerCard({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .24,
      width: size.width,
      decoration: BoxDecoration(
        color: cardPrimaryColor,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 20,
            left: 20,
            child: Text(
              'Add My Partner',
              style: TextStyle(
                color: Colors.deepPurple,
                letterSpacing: 1.3,
                wordSpacing: 1.3,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            width: size.width * .65,
            child: Image.asset(
              'assets/images/cover2.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
