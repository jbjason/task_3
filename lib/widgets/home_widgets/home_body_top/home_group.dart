import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';

class HomeGroup extends StatefulWidget {
  const HomeGroup({super.key});

  @override
  State<HomeGroup> createState() => _HomeGroupState();
}

class _HomeGroupState extends State<HomeGroup> {
  int _selectedGroup = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      itemCount: groups.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) {
        final selected = _selectedGroup == i;
        final color = selected ? secondaryColor : Colors.white;
        final textcolor = selected ? Colors.white : secondaryColor;
        return InkWell(
          onTap: () => setState(() => _selectedGroup = i),
          child: Container(
            width: 115,
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: color,
              boxShadow: boxShadow,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    groups[i].img,
                    color: textcolor,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 15),
                // title
                Text(
                  groups[i].title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: textcolor, fontSize: 10),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
