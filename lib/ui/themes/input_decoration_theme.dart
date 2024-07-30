import 'package:flutter/material.dart';
import 'package:ringo_media_flutter/ui/app_router.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';
import 'package:ringo_media_flutter/ui/utils/go_router.dart';

class MyInputDecorationTheme {
  // A method that returns InputDecorationTheme to pass it to the inputDecorationTheme
  // property of the ThemeData Class  in main.dart

  final navigatorContext = navigatorKey.currentState?.context;

  InputDecorationTheme myInputDecorationTheme() => InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        disabledBorder: _underlineInputBorder(UIColor.kSecondry),
        enabledBorder: _underlineInputBorder(UIColor.kSecondry),
        focusedBorder: _underlineInputBorder(UIColor.kSecondry),
        errorBorder: _underlineInputBorder(Colors.red),
        focusedErrorBorder: _underlineInputBorder(Colors.orangeAccent),
        errorStyle: _buildTextStyle(Colors.red),
        labelStyle: GoRouterLocation.ctx?.label,
      );

  UnderlineInputBorder _underlineInputBorder(Color color) =>
      UnderlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 1,
        ),
      );

  TextStyle _buildTextStyle(Color color, {double fontSize = 16}) => TextStyle(
        color: color,
        fontSize: fontSize,
      );
}
