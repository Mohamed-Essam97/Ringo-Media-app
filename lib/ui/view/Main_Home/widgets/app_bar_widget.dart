import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ringo_media_flutter/gen/assets.gen.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppBar(
            centerTitle: false,
            title: Text(
              title,
              style: context.body1,
            ),
            leadingWidth: 24,
            leading: SvgPicture.asset(
              Assets.icons.menu.path,
              height: 24,
              width: 24,
            ),
            actions: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: UIColor.kSecondry,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(Assets.icons.notification.path),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65.0);
}
