import 'package:flutter/material.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

TextTheme defaultTextTheme = const TextTheme(
  displayLarge: TextStyle(
    fontSize: 36.0,
    fontFamily: 'Bold',
    inherit: true,
    color: UIColor.kPrimary,
  ),
  displayMedium: TextStyle(
    fontSize: 60.0,
    fontFamily: 'Medium',
    inherit: true,
    color: UIColor.kPrimary,
  ),
  displaySmall: TextStyle(
    fontSize: 48.0,
    fontFamily: 'Regular',
    inherit: true,
    color: UIColor.kPrimary,
  ),
  headlineLarge: TextStyle(
    fontSize: 36.0,
    fontFamily: 'Bold',
    inherit: true,
    color: UIColor.kPrimary,
  ),
  headlineMedium: TextStyle(
    fontSize: 24.0,
    fontFamily: 'Medium',
    inherit: true,
    color: UIColor.kPrimary,
  ),
  headlineSmall: TextStyle(
    fontSize: 20.0,
    fontFamily: 'Regular',
    inherit: true,
    color: UIColor.kPrimary,
  ),
  titleLarge: TextStyle(
    fontSize: 16.0,
    fontFamily: 'Bold',
    inherit: true,
    color: UIColor.kPrimary,
  ),
  titleMedium: TextStyle(
    fontSize: 14.0,
    fontFamily: 'Medium',
    inherit: true,
    color: UIColor.kGrey,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    fontFamily: 'SemiBold',
    inherit: true,
    color: UIColor.kPrimary,
  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    fontFamily: 'Bold',
    inherit: true,
    color: UIColor.kPrimary,
  ),
);

extension TextThemeExtension on BuildContext {
  // * (default) TextTheme
  TextStyle? get h1 => Theme.of(this).textTheme.displayLarge;
  TextStyle? get h2 => Theme.of(this).textTheme.displayMedium;
  TextStyle? get h3 => Theme.of(this).textTheme.displaySmall;
  TextStyle? get h4 => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get h5 => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get h6 => Theme.of(this).textTheme.titleLarge;

  TextStyle? get sub1 => Theme.of(this).textTheme.titleMedium;
  TextStyle? get sub2 => Theme.of(this).textTheme.titleSmall;

  TextStyle? get body1 => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get body2 => Theme.of(this).textTheme.bodyMedium;

  TextStyle? get button => Theme.of(this).textTheme.labelLarge;

  TextStyle? get errorText => Theme.of(this)
      .textTheme
      .labelLarge!
      .copyWith(color: Colors.red, fontSize: 10);

  TextStyle? get label => Theme.of(this).textTheme.bodyLarge;
}
