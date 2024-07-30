import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';

class DayViewWidget extends StatelessWidget {
  final GlobalKey<DayViewState>? state;
  final double? width;

  const DayViewWidget({
    super.key,
    this.state,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return DayView(
      key: state,
      width: width,
      startDuration: const Duration(hours: 4),
      showVerticalLine: false,
      timeLineOffset: 21,
      showHalfHours: true,
      heightPerMinute: 2,
      timeLineBuilder: _timeLineBuilder,
      hourIndicatorSettings: HourIndicatorSettings(
        color: UIColor.kGrey.withOpacity(0.2),
      ),
      onEventTap: (events, date) {},
      // halfHourIndicatorSettings: HourIndicatorSettings(
      //   color: Theme.of(context).dividerColor,
      //   lineStyle: LineStyle.dashed,
      // ),
      headerStyle: const HeaderStyle(
        leftIconVisible: false,
        rightIconVisible: false,
      ),
      showQuarterHours: false,
      startHour: 1,
      verticalLineOffset: 4,
      timeLineWidth: 60,
      showLiveTimeLineInAllDays: true,
      liveTimeIndicatorSettings: const LiveTimeIndicatorSettings(
        color: Colors.black,
        showBullet: true,
        showTime: true,
        showTimeBackgroundView: false,
      ),
    );
  }

  Widget _timeLineBuilder(DateTime date) {
    if (date.minute != 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            top: -8,
            right: 8,
            child: Text(
              "${date.hour}:${date.minute}",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black.withAlpha(50),
                fontStyle: FontStyle.italic,
                fontSize: 12,
              ),
            ),
          ),
        ],
      );
    }

    final hour = ((date.hour - 1) % 12) + 1;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          top: -8,
          right: 8,
          child: Text(
            "$hour ${date.hour ~/ 12 == 0 ? "am" : "pm"}",
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
