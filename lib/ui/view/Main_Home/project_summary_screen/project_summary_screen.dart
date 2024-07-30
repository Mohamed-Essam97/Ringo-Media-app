import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ringo_media_flutter/gen/assets.gen.dart';
import 'package:ringo_media_flutter/ui/buttons/custom_outline_button.dart';
import 'package:ringo_media_flutter/ui/custom_forms/reactive_widgets.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';
import 'package:ringo_media_flutter/ui/view/Main_Home/project_summary_screen/widgets/monthly_usage_chart.dart';
import 'package:ringo_media_flutter/ui/view/Main_Home/project_summary_screen/widgets/project_status_widget.dart';

final _searchForm = FormGroup(
  {
    'search': FormControl<String>(),
  },
);

class ProjectSummaryScreen extends StatelessWidget {
  const ProjectSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              thickness: .1,
              color: UIColor.kGrey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  ReactiveForm(
                    formGroup: _searchForm,
                    child: Column(
                      children: [
                        ReactiveField(
                          type: ReactiveFields.TEXT,
                          suffixIcon:
                              SvgPicture.asset(Assets.icons.searchNormal.path),
                          controllerName: "search",
                          label: "Search",
                          hint: 'Search project here',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(12),
            const ProjectStatusRow(),
            const Gap(24),
            CustomOutLineButton(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              onPressed: () {},
              text: 'View All Project',
            ),
            const Gap(12),
            const MonthUsageChart()
          ],
        ),
      ),
    );
  }
}

class ProjectStatusRow extends StatelessWidget {
  const ProjectStatusRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          ProjectStatusWidget(
            startColor: const Color(0xFF3A9ADE),
            endColor: const Color(0xFF5EACE4),
            icon: Assets.icons.vector.path,
            number: '10',
            status: 'Project In Progress',
          ),
          const Gap(8),
          ProjectStatusWidget(
            startColor: const Color(0xFF3F8B8D),
            endColor: const Color(0xFF58B2B4),
            icon: Assets.icons.verify.path,
            number: '24',
            status: 'Project Competed',
          ),
          const Gap(8),
          ProjectStatusWidget(
            startColor: const Color(0xFFDD4A4A),
            endColor: const Color(0xFFE87777),
            icon: Assets.icons.closeCircle.path,
            number: '5',
            status: 'Project Cancelled',
          ),
        ],
      ),
    );
  }
}
