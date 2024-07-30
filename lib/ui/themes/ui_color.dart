import 'package:flutter/material.dart';

class UIColor {
  // Private constructor
  UIColor._();

  // Primary colors
  static const Color kPrimary = Color(0xFF191D2B);
  static const Color kSecondry = Color(0xFFE8EAEE);
  static const Color kGrey = Color(0xFF96A0B5);

  static const Color kBlue = Color(0xFF5599F5);
  static const Color kOrange = Color(0xFFFD7722);
  static const Color kPink = Color(0xFFE84C88);
  static const Color kGreen = Color(0xFF5ECEB3);
  static const Color kPurple = Color(0xFFD08CDF);

  static const Color kBackground = Color(0xFFFFFFFF);
  static const Color kNavigationBar = Color(0xFFFFFFFF);

  static const Color kWhite = Color(0xFFFFFFFF);

  static List<BoxShadow> cardBoxShadow() => [
        const BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 20,
          offset: Offset(0, 4),
        ),
      ];
}
