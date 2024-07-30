import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class ProjectStatusWidget extends StatelessWidget {
  ProjectStatusWidget(
      {super.key,
      required this.startColor,
      required this.endColor,
      required this.icon,
      required this.number,
      required this.status});

  String status, number, icon;
  Color startColor, endColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: startColor.withOpacity(0.5),
              spreadRadius: -5,
              blurRadius: 20,
              offset: const Offset(0, 12), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              startColor,
              endColor,
            ],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    number,
                    style: context.h1!.copyWith(color: UIColor.kWhite),
                  ),
                  SvgPicture.asset(icon),
                ],
              ),
              const Gap(12),
              Text(
                status,
                style: context.sub1!.copyWith(color: UIColor.kWhite),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
