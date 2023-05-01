import 'package:flutter/material.dart';

class HomeOfferList extends StatelessWidget {
  const HomeOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .2,
      child: Image.asset(
        'assets/images/offer.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
