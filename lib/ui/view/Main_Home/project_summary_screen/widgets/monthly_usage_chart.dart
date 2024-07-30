import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ringo_media_flutter/ui/themes/ui_color.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MonthUsageChart extends HookWidget {
  const MonthUsageChart({super.key});

  @override
  Widget build(BuildContext context) {
    final focusedIndex = useState<int?>(null);

    final data = useState<List<ChartData>>([
      ChartData('Jan', 35, color: UIColor.kSecondry),
      ChartData('Feb', 28, color: UIColor.kSecondry),
      ChartData('Mar', 34, color: UIColor.kSecondry),
      ChartData('Apr', 32, color: UIColor.kSecondry),
      ChartData('May', 40, color: UIColor.kSecondry),
    ]);

    final TooltipBehavior tooltipBehavior = TooltipBehavior(
      enable: true,
      activationMode: ActivationMode.none,
    );

    Color getFocusedColor() {
      return UIColor.kPrimary;
    }

    void onPointTap(ChartPointDetails s) {
      final tappedIndex = s.pointIndex!;
      focusedIndex.value = tappedIndex;

      data.value = [
        for (int i = 0; i < data.value.length; i++)
          if (i == tappedIndex)
            ChartData(data.value[i].x, data.value[i].y,
                color: getFocusedColor())
          else
            ChartData(data.value[i].x, data.value[i].y,
                color: UIColor.kSecondry)
      ];

      tooltipBehavior.showByIndex(0, tappedIndex);
    }

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Productivity",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SfCartesianChart(
            primaryXAxis: CategoryAxis(
              labelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              axisLabelFormatter: (AxisLabelRenderDetails details) {
                final isSelected = focusedIndex.value == details.value;
                return ChartAxisLabel(
                  details.text,
                  TextStyle(
                    color: isSelected ? UIColor.kPrimary : UIColor.kSecondry,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            tooltipBehavior: tooltipBehavior,
            series: <CartesianSeries<ChartData, String>>[
              ColumnSeries<ChartData, String>(
                onPointTap: (s) => onPointTap(s),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(8)),
                dataSource: data.value,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                pointColorMapper: (ChartData data, _) => data.color,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, {this.color});

  final String x;
  final double y;
  Color? color;
}
