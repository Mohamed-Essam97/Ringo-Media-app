import 'package:flutter/material.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class ButtonsTheme {
  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      shadowColor: UIColor.kPrimary,
      minimumSize: const Size(double.infinity, 40.0),
      backgroundColor: UIColor.kPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
  );

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: UIColor.kWhite, width: 1.0),
      minimumSize: const Size(double.infinity, 40.0),
      disabledForegroundColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
  );
}
