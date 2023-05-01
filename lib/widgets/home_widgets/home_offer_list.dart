import 'package:flutter/material.dart';

class HomeOfferList extends StatelessWidget {
  const HomeOfferList({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .2,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            left: -20,
            right: -20,
            child: Image.asset('assets/images/offer.png'),
          )
        ],
      ),
    );
  }
}
