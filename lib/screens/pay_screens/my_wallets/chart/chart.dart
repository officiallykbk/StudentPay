import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('12', style: style);
        break;
      case 2:
        text = const Text('13', style: style);
        break;
      case 4:
        text = const Text('14', style: style);
        break;
      case 6:
        text = const Text('15', style: style);
        break;
      case 8:
        text = const Text('16', style: style);
        break;
      case 10:
        text = const Text('17', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '1K';
        break;
      case 2:
        text = '40k';
        break;
      case 4:
        text = '80k';
        break;
      case 6:
        text = '120k';
        break;
      case 8:
        text = '160k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height * 0.39,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, style: BorderStyle.solid)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Income performance",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 4),
          AspectRatio(
            aspectRatio: 1.3,
            child: LineChart(LineChartData(
              lineTouchData: const LineTouchData(enabled: true),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: true,
                horizontalInterval: 1,
                verticalInterval: 1,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: Colors.grey.shade700,
                    strokeWidth: 1,
                  );
                },
                getDrawingVerticalLine: (value) {
                  return FlLine(
                    color: Colors.grey.shade700,
                    strokeWidth: 1,
                  );
                },
              ),
              titlesData: FlTitlesData(
                show: true,
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 25,
                    interval: 1,
                    getTitlesWidget: bottomTitleWidgets,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: leftTitleWidgets,
                    reservedSize: 30,
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              minX: 0,
              maxX: 11,
              minY: 0,
              maxY: 9,
              lineBarsData: [
                LineChartBarData(
                  color: const Color.fromRGBO(250, 255, 0, 1),
                  spots: [
                    const FlSpot(0, 1),
                    const FlSpot(2.5, 2),
                    const FlSpot(4.9, 3),
                    const FlSpot(6.8, 7),
                    const FlSpot(8, 2),
                    const FlSpot(10, 4),
                    const FlSpot(11, 6),
                  ],
                  isCurved: true,
                  barWidth: 5,
                  isStrokeCapRound: true,
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: false,
                  ),
                ),
                LineChartBarData(
                  color: const Color.fromRGBO(74, 192, 255, 1),
                  spots: [
                    const FlSpot(0, 2),
                    const FlSpot(2.5, 3),
                    const FlSpot(4.9, 4),
                    const FlSpot(6.8, 8),
                    const FlSpot(8, 3),
                    const FlSpot(10, 5),
                    const FlSpot(11, 7),
                  ],
                  isCurved: true,
                  barWidth: 5,
                  isStrokeCapRound: true,
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: false,
                  ),
                ),
                LineChartBarData(
                  color: const Color.fromRGBO(234, 67, 53, 1),
                  spots: [
                    const FlSpot(0, 3),
                    const FlSpot(2.5, 4),
                    const FlSpot(4.9, 5),
                    const FlSpot(6.8, 9),
                    const FlSpot(8, 4),
                    const FlSpot(10, 6),
                    const FlSpot(11, 8),
                  ],
                  isCurved: true,
                  barWidth: 5,
                  isStrokeCapRound: true,
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: false,
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
