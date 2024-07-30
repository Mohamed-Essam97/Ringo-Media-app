import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ringo_media_flutter/gen/assets.gen.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialBtn(
          icon: Assets.icons.google.path,
          title: "Continue with Google",
        ),
        const Gap(14),
        SocialBtn(
          icon: Assets.icons.facebook.path,
          title: "Continue with Facebook",
        ),
        const Gap(14),
        SocialBtn(
          icon: Assets.icons.apple.path,
          title: "Continue with Apple",
        ),
      ],
    );
  }
}

class SocialBtn extends StatelessWidget {
  SocialBtn({super.key, required this.icon, required this.title});

  String icon, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: UIColor.kSecondry),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
          leading: SvgPicture.asset(
            icon,
          ),
          title: Center(
            child: Text(
              title,
              style: context.body1,
            ),
          )),
    );
  }
}
