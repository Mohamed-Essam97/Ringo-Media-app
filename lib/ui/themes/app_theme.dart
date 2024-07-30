import 'package:flutter/material.dart';
import 'package:ringo_media_flutter/ui/themes/buttons_theme.dart';
import 'package:ringo_media_flutter/ui/themes/input_decoration_theme.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class AppTheme {
  static final Color _lightFocusColor = Colors.white.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData = themeData(
    lightColorScheme,
    _lightFocusColor,
  );

  static ThemeData darkThemeData = themeData(
    darkColorScheme,
    _darkFocusColor,
  );

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFB93C5D),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color(0xFF322942),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: UIColor.kPrimary,
    secondary: UIColor.kSecondry,
    surface: UIColor.kBackground,
    error: Colors.redAccent,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    brightness: Brightness.dark,
  );

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      inputDecorationTheme: MyInputDecorationTheme().myInputDecorationTheme(),
      appBarTheme: const AppBarTheme(color: UIColor.kBackground),
      textTheme: defaultTextTheme,
      primaryTextTheme: defaultTextTheme,
      elevatedButtonTheme: ButtonsTheme.elevatedButtonTheme,
      outlinedButtonTheme: ButtonsTheme.outlinedButtonTheme,
      colorScheme: colorScheme,
      canvasColor: colorScheme.surface,
      scaffoldBackgroundColor: colorScheme.surface,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      datePickerTheme: const DatePickerThemeData(
        backgroundColor: Colors.white,
        dayStyle: TextStyle(color: Colors.black),
        todayBorder: BorderSide(color: Colors.blue, width: 2),
        yearStyle: TextStyle(color: Colors.blueAccent),
        headerHeadlineStyle:
            TextStyle(color: Colors.grey), // Color for day headers
        rangeSelectionBackgroundColor: Colors.blue, // Color for selected day
      ),
    );
  }
}
