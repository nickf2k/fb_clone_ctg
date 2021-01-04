import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  static Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };

  static MaterialColor yellow = MaterialColor(0xffffde03, color);
  static MaterialColor blueMain = MaterialColor(0xFF0072BC, color);
  static MaterialColor blueSecondary = MaterialColor(0xFF6AAAD6, color);
  static MaterialColor greyMain = MaterialColor(0xFF9D9D9D, color);
  static MaterialColor grey1 = MaterialColor(0xFFF5F5F5, color);
  static Color white = Color(0xFFFFFFFF);
  static MaterialColor textColor = MaterialColor(0xff0336ff, color);
  static MaterialColor textBlue = MaterialColor(0xFF0273BD, color);
  static MaterialColor textGrey = MaterialColor(0xFFAAAAAA, color);
  static MaterialColor textBlack = MaterialColor(0xFF363A3E, color);
  static MaterialColor textEagle = MaterialColor(0xFFFF1616, color);
  static MaterialColor textVIP1 = MaterialColor(0xFFFF5A00, color);
  static MaterialColor textVIP2 = MaterialColor(0xFFEAAC37, color);
  static Color darkGray = Color.fromRGBO(101, 101, 101, 1);
  static const Color transparent = Color(0x00000000);
}
