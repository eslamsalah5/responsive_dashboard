import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({
    super.key,
  });

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  int touchedIndex = -1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        swapAnimationCurve: Curves.bounceInOut,
        swapAnimationDuration: const Duration(milliseconds: 1000),
        PieChartData(
          pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (p0, pieTouchResponse) {
                setState(() {
                  if (pieTouchResponse == null ||
                      pieTouchResponse.touchedSection == null) {
                    touchedIndex = -1;
                    return;
                  }
                  touchedIndex =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                });
              }),
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
              color: const Color(0xff208CC8),
              value: 40,
              showTitle: false,
              radius: touchedIndex == 0 ? 45 : 30,
            ),
            PieChartSectionData(
              color: const Color(0xff4EB7F2),
              value: 25,
              showTitle: false,
              radius: touchedIndex == 1 ? 45 : 30,
            ),
            PieChartSectionData(
              color: const Color(0xff064061),
              value: 20,
              showTitle: false,
              radius: touchedIndex == 2 ? 45 : 30,
            ),
            PieChartSectionData(
              color: const Color(0xffE2DECD),
              value: 22,
              showTitle: false,
              radius: touchedIndex == 3 ? 45 : 30,
            ),
          ],
        ),
      ),
    );
  }
}
