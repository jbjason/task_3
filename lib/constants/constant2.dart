import 'package:flutter/material.dart';
import 'package:task_3/constants/constant.dart';

Container getBoxButton(String img) => Container(
      height: 38,
      width: 38,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cardPrimaryColor,
        boxShadow: boxShadow,
      ),
      child: Image.asset(img, fit: BoxFit.contain),
    );
