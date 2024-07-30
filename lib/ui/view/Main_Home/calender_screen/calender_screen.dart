import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';
import 'package:ringo_media_flutter/ui/view/Main_Home/calender_screen/widgets/schedule_day_widget.dart';
import 'package:ringo_media_flutter/ui/view/Main_Home/calender_screen/widgets/tasks_widget.dart';

class CalenderScreen extends HookWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final EasyInfiniteDateTimelineController timeController =
        EasyInfiniteDateTimelineController();

    final focusDate = useState(DateTime.now());

    final tabController = useTabController(initialLength: 2);

    return Column(
      children: [
        MonthsWidget(focusDate: focusDate),
        const Gap(12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: tabController,
            labelStyle: context.button!.copyWith(fontSize: 18),
            unselectedLabelStyle: context.button!
                .copyWith(color: UIColor.kSecondry, fontSize: 18),
            tabs: const [
              Tab(
                text: "Schedule",
              ),
              Tab(
                text: "Task",
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              DayViewWidget(),
              TasksWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

class MonthsWidget extends StatelessWidget {
  const MonthsWidget({
    super.key,
    required this.focusDate,
  });

  final ValueNotifier<DateTime> focusDate;

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: focusDate.value,
      onDateChange: (selectedDate) {},
      headerProps: const EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
        dateFormatter: DateFormatter.fullDateMonthAsStrDY(),
        showHeader: true,
        showMonthPicker: true,
        showSelectedDate: true,
      ),
      dayProps: EasyDayProps(
        dayStructure: DayStructure.dayStrDayNum,
        activeDayStyle: DayStyle(
          monthStrStyle:
              context.h1!.copyWith(color: UIColor.kWhite, fontSize: 18),
          dayStrStyle:
              context.h1!.copyWith(color: UIColor.kWhite, fontSize: 18),
          borderRadius: 8,
          dayNumStyle:
              context.h1!.copyWith(color: UIColor.kWhite, fontSize: 24),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: UIColor.kPrimary,
          ),
        ),
      ),
    );
  }
}
