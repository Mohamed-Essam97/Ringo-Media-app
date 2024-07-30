import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ringo_media_flutter/ui/custom_forms/validator_messages.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

enum ReactiveFields {
  TEXT,
  PASSWORD,
  DROP_DOWN,
  DATE_PICKER_FIELD,
  TIME_PICKER_FIELD,
}

class ReactiveField extends StatelessWidget {
  final ReactiveFields type;
  final String controllerName;
  final String label;
  final int? maxLines;
  final Color? hoverColor;
  final double? width;
  final TextInputAction? textInputAction;
  final Map<String, String Function(Object)>? validationMesseges;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final String? hint, radioTitle, radioVal;
  final Color? borderColor, hintColor, textColor, fillColor, enabledBorderColor;
  final bool? secure, autoFocus, filled;
  final bool readOnly;
  final List<dynamic>? itemList;
  final BuildContext? context;
  final VoidCallback? onTap;
  final VoidCallback? onSubmitted;
  final Function? onChanged;
  final TextStyle? labelStyle;
  final Widget? icon, suffixIcon;
  final Function? function;
  final List<TextInputFormatter>? inputFormatters;

  final Iterable<String>? autofillHints;
  const ReactiveField({
    super.key,
    required this.type,
    this.inputFormatters,
    this.onChanged,
    required this.controllerName,
    required this.label,
    this.validationMesseges,
    this.hint,
    this.labelStyle,
    this.onSubmitted,
    this.function,
    this.hoverColor,
    this.autofillHints,
    this.width = double.infinity,
    this.keyboardType = TextInputType.emailAddress,
    this.secure = false,
    this.autoFocus = false,
    this.readOnly = false,
    this.icon,
    this.suffixIcon,
    this.onTap,
    this.textInputAction,
    this.radioTitle = '',
    this.borderColor = UIColor.kSecondry,
    this.hintColor = Colors.black,
    this.textColor = Colors.black,
    this.fillColor = Colors.transparent,
    this.enabledBorderColor = Colors.white,
    this.maxLines = 1,
    this.filled = false,
    this.radioVal = '',
    this.itemList,
    this.context,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: SizedBox(
        width: width,
        child: buildReactiveField(context, controller),
      ),
    );
  }

  buildReactiveField(BuildContext context, controller) {
    Map<String, String Function(Object)>? validationM =
        validationMesseges ?? constValidationMessages;

    switch (type) {
      case ReactiveFields.TEXT:
        return ReactiveTextField(
          enableInteractiveSelection: true,
          autofillHints: autofillHints,
          formControlName: controllerName,
          validationMessages: validationM,
          keyboardType: keyboardType,
          style: context.body1,
          textInputAction: textInputAction,
          maxLines: maxLines,
          autocorrect: false,
          inputFormatters: inputFormatters,
          textCapitalization: TextCapitalization.sentences,
          autofocus: autoFocus!,
          readOnly: readOnly,
          obscureText: secure!,
          decoration: InputDecoration(
            suffixIconConstraints:
                const BoxConstraints(minHeight: 24, minWidth: 24),
            suffixIcon: suffixIcon,
            labelText: label,
            hintText: hint,
            hintStyle: context.sub1,
            errorStyle: context.errorText,
            labelStyle: context.label,
          ),
        );

      case ReactiveFields.PASSWORD:
        return ReactiveTextField(
          enableInteractiveSelection: true,
          autofillHints: autofillHints,
          formControlName: controllerName,
          textInputAction: textInputAction,
          validationMessages: validationM,
          keyboardType: TextInputType.visiblePassword,
          style: context.body1,
          controller: controller,
          autofocus: autoFocus!,
          readOnly: readOnly,
          obscureText: secure!,
          decoration: InputDecoration(
            suffix: suffixIcon,
            suffixIcon: suffixIcon ??
                InkWell(
                  onTap: onTap,
                  child: Icon(
                    secure! ? Icons.visibility : Icons.visibility_off,
                    color: UIColor.kSecondry,
                  ),
                ),
            prefixIcon: icon,
            labelText: label,
            hintStyle: context.sub1,
            hintText: hint,
            errorStyle: context.errorText,
            labelStyle: context.label,
          ),
        );

      case ReactiveFields.DROP_DOWN:
        return ReactiveDropdownField<dynamic>(
          hint: Text(hint ?? ""),
          items: itemList!
              .map((item) => DropdownMenuItem<dynamic>(
                    value: item.toString(),
                    child: Text(
                      item,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ))
              .toList(),
          style: const TextStyle(color: Colors.black),
          icon: const Icon(
            Icons.arrow_drop_down_rounded,
          ),
          // onChanged: onChanged,
          readOnly: readOnly,
          formControlName: controllerName,
          decoration: InputDecoration(
            label: Text(label),
            hintText: hint,
          ),
        );
      case ReactiveFields.DATE_PICKER_FIELD:
        return ReactiveTextField(
          formControlName: controllerName,
          readOnly: true,
        );

      case ReactiveFields.TIME_PICKER_FIELD:
        return ReactiveTextField(
          formControlName: controllerName,
          readOnly: true,
          decoration: InputDecoration(
            labelText: label,
            filled: filled,
            fillColor: fillColor,
            hintText: hint,
            labelStyle: TextStyle(color: textColor),
            hintStyle: TextStyle(color: hintColor),
            suffixIcon: ReactiveTimePicker(
              formControlName: controllerName,
              minuteLabelText: "",
              builder: (context, picker, child) {
                return IconButton(
                  onPressed: picker.showPicker,
                  icon: const Icon(Icons.access_time_outlined),
                );
              },
            ),
          ),
        );
    }
  }
}
