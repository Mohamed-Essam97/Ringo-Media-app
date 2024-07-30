import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/theme_colors.dart';

class LogoutButton extends HookWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/signup');
      },
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 20, // Space between underline and text
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Log Out',
            style: context.h1!.copyWith(
              color: context.secondary,
              fontSize: 12,
              decoration: TextDecoration.underline,
              decorationColor: context.secondary,
              decorationThickness: 1,
            ),
          ),
        ),
      ),
    );
  }
}
