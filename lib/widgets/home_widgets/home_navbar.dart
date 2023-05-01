import 'package:flutter/material.dart';
import 'package:task_3/constants/constants3.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key, required this.selected});
  final ValueNotifier selected;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: kBottomNavigationBarHeight,
      decoration: BoxDecoration(
        color: cardPrimaryColor,
        boxShadow: boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          navItems.length,
          (i) => ValueListenableBuilder(
            valueListenable: selected,
            builder: (context, val, _) {
              final color = val == i ? secondaryColor : Colors.transparent;
              return InkWell(
                onTap: () => selected.value = i,
                child: Container(
                  width: size.width / 4,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(8)),
                    color: color,
                  ),
                  child: Image.asset(navItems[i],
                      color: val == i ? cardPrimaryColor : Colors.grey,
                      fit: BoxFit.contain),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
