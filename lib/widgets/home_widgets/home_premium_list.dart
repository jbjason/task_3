import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';

class HomePremiumList extends StatelessWidget {
  const HomePremiumList({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _getPremiumCard(0, _getPremiumText()),
          _getPremiumCard(1, _getNormalText()),
        ],
      ),
    );
  }

  Text _getNormalText() => const Text(
        '1 month BDT 574.93',
        style: TextStyle(
          fontSize: 9,
          color: textPrimaryColor,
        ),
      );
  RichText _getPremiumText() => RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: '30-Day Free Trial\n\n',
              style: TextStyle(
                color: cardPrimaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
            TextSpan(
              text: '( Then BDT 3400/year only BDT 250.46/month )',
              style: TextStyle(
                color: cardPrimaryColor,
                letterSpacing: 1.3,
                wordSpacing: 1.2,
                fontSize: 8,
              ),
            ),
          ],
        ),
      );

  Container _getPremiumCard(int key, Widget child) => Container(
        width: size.width * .36,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: key == 0 ? secondaryColor : Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: boxShadow,
        ),
        child: child,
      );
}
