import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ringo_media_flutter/gen/assets.gen.dart';
import 'package:ringo_media_flutter/ui/buttons/custom_normal_button.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';
import 'package:ringo_media_flutter/ui/view/Main_Home/calender_screen/calender_screen.dart';
import 'package:ringo_media_flutter/ui/view/Main_Home/project_summary_screen/project_summary_screen.dart';
import 'package:ringo_media_flutter/ui/view/Main_Home/widgets/app_bar_widget.dart';
import 'package:sizer/sizer.dart';

class MainHomeScreen extends HookWidget {
  const MainHomeScreen({super.key});

  Widget _buildBody(index) {
    switch (index) {
      case 1:
        return const ProjectSummaryScreen();
      case 2:
        return const CalenderScreen();
      default:
        return const SizedBox();
    }
  }

  String _buildText(index) {
    switch (index) {
      case 1:
        return 'Project Summary';
      case 2:
        return 'Calendar';
      default:
        return 'Project Summary';
    }
  }

  @override
  Widget build(BuildContext context) {
    final index = useState(1);

    final selectedDate = useState<DateTime>(DateTime.now());

    Future<void> openDatePicker() async {
      await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return _DatePickerBottomSheet(
            initialDate: selectedDate.value,
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            onDateSelected: (pickedDate) {
              if (pickedDate != selectedDate.value) {
                selectedDate.value = pickedDate;
              }
              // Navigator.of(context).pop();
            },
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBarWidget(
        title: _buildText(index.value),
      ),
      body: _buildBody(index.value),
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            openDatePicker();
          },
          tooltip: '',
          elevation: 4.0,
          child: SvgPicture.asset(Assets.icons.fiPlus.path)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: UIColor.cardBoxShadow(),
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(50),
              right: Radius.circular(50),
            )),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {
                    // index.value = 0;
                  },
                  child: SvgPicture.asset(
                    Assets.icons.category.path,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    index.value = 1;
                  },
                  child: SvgPicture.asset(
                    index.value == 1
                        ? Assets.icons.folderActive.path
                        : Assets.icons.folder.path,
                  ),
                ),
              ),
              const Expanded(child: Text('')),
              InkWell(
                onTap: () {
                  index.value = 2;
                },
                child: SvgPicture.asset(
                  index.value == 2
                      ? Assets.icons.calendarActive.path
                      : Assets.icons.calendar.path,
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    // index.value = 3;
                  },
                  child: Image.asset(
                    Assets.icons.memoji2Png.path,
                    height: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _DatePickerBottomSheet extends StatelessWidget {
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final ValueChanged<DateTime> onDateSelected;

  const _DatePickerBottomSheet({
    super.key,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 50.h, // Adjust the height as needed
      child: Column(
        children: [
          Text(
            "Choose Date",
            style: context.h1!.copyWith(fontSize: 16),
          ),
          Expanded(
            child: CalendarDatePicker(
              initialDate: initialDate,
              firstDate: firstDate,
              lastDate: lastDate,
              onDateChanged: onDateSelected,
            ),
          ),
          NormalButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            text: 'Continue',
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
