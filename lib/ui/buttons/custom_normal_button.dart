import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class NormalButton extends HookWidget {
  final bool bold;
  final bool busy;
  final double? width;
  final double? height;
  final double raduis;
  final double elevation;
  final String? text;
  final TextStyle? textStyle;
  final Widget? child;
  final Color? color;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final Color? textColor;

  const NormalButton({
    super.key,
    this.textStyle,
    this.child,
    required this.onPressed,
    required this.text,
    this.width,
    this.busy = false,
    this.height = 56,
    this.elevation = 0,
    this.raduis = 4,
    this.margin = const EdgeInsets.symmetric(vertical: 5),
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    this.textColor = UIColor.kWhite,
    this.color,
    this.bold = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                backgroundColor: WidgetStateProperty.all(color),
              ),
          onPressed: () => onPressed(),
          child: Text(
            text!,
            style: textStyle ?? context.button!.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
