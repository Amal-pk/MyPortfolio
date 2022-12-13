import 'package:flutter/material.dart';

class ConstantColors {
//---------------------------------------------------------------constant colors

  static Color iconAndProfileBg = Colors.white.withOpacity(0.1);

//---------------------------------------------------------------gradient colors

  static Gradient profileGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 18, 54, 83),
      Colors.blueGrey,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static Gradient familiarGradient = const LinearGradient(
    colors: [
      Colors.pink,
      Colors.redAccent,
      Colors.orange,
      Colors.deepOrange,
      Colors.orangeAccent,
      Colors.red,
      Colors.pink,
      Colors.orangeAccent,
      Colors.pinkAccent,
      Colors.orangeAccent,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

//---------------------------------------------------------------box shadow

  static List<BoxShadow> profileBoxshadow = const [
    BoxShadow(
      color: Color.fromARGB(255, 5, 7, 87),
      blurRadius: 12,
      offset: Offset(0, 6),
    ),
  ];
}
