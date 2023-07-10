import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatefulWidget {
  const CustomLineChart({
    super.key,
    this.showNet = true,
  });

  final bool showNet;

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  List<Color> gradientColors = [
    const Color(0xFF2196F3).withOpacity(0.35),
    Colors.transparent,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: AspectRatio(
        aspectRatio: 1.70,
        child: LineChart(
          LineChartData(
            gridData: const FlGridData(show: false),
            titlesData: const FlTitlesData(show: false),
            borderData: FlBorderData(show: false),
            minX: 0,
            minY: 0,
            lineBarsData: [
              LineChartBarData(
                spots: widget.showNet ? netData() : spendingData(),
                isCurved: true,
                color: const Color(0xFF2196F3),
                barWidth: 5,
                isStrokeCapRound: true,
                dotData: const FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: gradientColors,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<FlSpot> netData() {
    return const [
      FlSpot(0, 5),
      FlSpot(1, 4.5),
      FlSpot(2, 10),
      FlSpot(3, 6.5),
      FlSpot(4, 8.5)
    ];
  }

  List<FlSpot> spendingData() {
    return const [
      FlSpot(0, 5),
      FlSpot(1, 6),
      FlSpot(2, 5),
      FlSpot(3, 5),
      FlSpot(4, 6),
    ];
  }
}
