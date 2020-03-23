import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

final List<List<CircularStackEntry>> _quarterlyProfitPieData = [
  <CircularStackEntry>[
    new CircularStackEntry( 
      <CircularSegmentEntry>[
        new CircularSegmentEntry(333.0, Color(0xFF22215B)),
        new CircularSegmentEntry(333.0, Color(0xFF567DF4)),
        new CircularSegmentEntry(333.0, Color(0xFFFFC701)),
      ],
    ),
  ],
];

class AnimatedPieChart extends StatefulWidget {
  @override
  _AnimatedPieChartState createState() =>
      new _AnimatedPieChartState();
}

class _AnimatedPieChartState extends State<AnimatedPieChart> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  final _chartSize = const Size(350.0, 350.0);
  int sampleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedCircularChart(
      key: _chartKey,
      size: _chartSize,
      initialChartData: _quarterlyProfitPieData[0],
      chartType: CircularChartType.Radial,
      duration: Duration(seconds: 1),
      holeRadius: 5,
      startAngle: -150,
    );
  }
}
