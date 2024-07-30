import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class CustomOutLineButton extends HookWidget {
  final bool localize;
  final bool busy;
  final bool bold;
  final double? width;
  final double height;
  final double raduis;
  final double elevation;
  final String text;
  final Widget? child;

  final Color? backGroundColor, borderColor;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;

  const CustomOutLineButton({
    super.key,
    this.busy = false,
    this.localize = true,
    required this.onPressed,
    this.child,
    required this.text,
    this.width,
    this.backGroundColor,
    this.borderColor = UIColor.kPrimary,
    this.height = 50,
    this.elevation = 0,
    this.raduis = 4,
    this.margin = const EdgeInsets.symmetric(vertical: 5),
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    this.bold = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox(
        height: height,
        child: OutlinedButton(
          onPressed: () => onPressed(),
          style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                side: WidgetStateProperty.all(
                    BorderSide(color: borderColor!, width: 1.0)),
              ),
          child: child ??
              Padding(
                padding: padding,
                child: Text(
                  text,
                  style: context.button!.copyWith(color: UIColor.kPrimary),
                ),
              ),
        ),
      ),
    );
  }
}
