import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/points_option/bar_graph/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  const MyBarGraph({super.key, required this.weeklySummary});
  final List weeklySummary;
  @override
  Widget build(BuildContext context) {
    BarData mybarData = BarData(
        sunamount: weeklySummary[0],
        monamount: weeklySummary[1],
        tueamount: weeklySummary[2],
        wedamount: weeklySummary[3],
        thuamount: weeklySummary[4],
        friamount: weeklySummary[5],
        satamount: weeklySummary[6]);
    mybarData.initializeBarData();
    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(
            show: true,
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true, getTitlesWidget: getBottomTitles))),
        barGroups: mybarData.bardata
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    color: const Color(0xFFFFE70A),
                    width: 19,
                    borderRadius: BorderRadius.circular(3),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 100,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style =
      TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18);
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text(
        'Sun',
        style: style,
      );
      break;
    case 1:
      text = const Text(
        'Mon',
        style: style,
      );
      break;
    case 2:
      text = const Text(
        'Tue',
        style: style,
      );
      break;
    case 3:
      text = const Text(
        'Wed',
        style: style,
      );
      break;
    case 4:
      text = const Text(
        'Thur',
        style: style,
      );
      break;
    case 5:
      text = const Text(
        'Fri',
        style: style,
      );
      break;
    case 6:
      text = const Text(
        'Sat',
        style: style,
      );
      break;
    default:
      text = const Text(
        '',
        style: style,
      );
      break;
  }
  return SizedBox(
    height: 50.0, // adjust as needed
    width: 50.0, // adjust as needed
    child: OverflowBox(
      minWidth: 0.0,
      minHeight: 0.0,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SideTitleWidget(axisSide: meta.axisSide, child: text),
      ),
    ),
  );
}
