
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class DetailedPieChart extends StatefulWidget {
  const DetailedPieChart({
    super.key,
  });

  @override
  State<DetailedPieChart> createState() => _DetailedPieChartState();
}

class _DetailedPieChartState extends State<DetailedPieChart> {
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
              title: touchedIndex == 0 ? 'Design service' : '40%',
              titleStyle: Styles.semiBold16(context).copyWith(
                color: touchedIndex == 0 ? null : Colors.white,
              ),
              titlePositionPercentageOffset: touchedIndex == 0 ? 1.5 : null,
              radius: touchedIndex == 0 ? 50 : 35,
            ),
            PieChartSectionData(
              color: const Color(0xff4EB7F2),
              value: 25,
              title: touchedIndex == 1 ? 'Design product' : '25%',
              titleStyle: Styles.semiBold16(context).copyWith(
                color: touchedIndex == 1 ? null : Colors.white,
              ),
              titlePositionPercentageOffset: touchedIndex == 1 ? 2.35 : null,
              radius: touchedIndex == 1 ? 50 : 35,
            ),
            PieChartSectionData(
              color: const Color(0xff064061),
              value: 20,
              title: touchedIndex == 2 ? 'Product royalti' : '20%',
              titleStyle: Styles.semiBold16(context).copyWith(
                color: touchedIndex == 2 ? null : Colors.white,
              ),
              titlePositionPercentageOffset: touchedIndex == 2 ? 1.5 : null,
              radius: touchedIndex == 2 ? 50 : 35,
            ),
            PieChartSectionData(
              color: const Color(0xffE2DECD),
              value: 22,
              title: touchedIndex == 3 ? 'Other' : '22%',
              titleStyle: Styles.semiBold16(context).copyWith(
                color: touchedIndex == 3 ? null : Colors.white,
              ),
              titlePositionPercentageOffset: touchedIndex == 3 ? 1.5 : null,
              radius: touchedIndex == 3 ? 50 : 35,
            ),
          ],
        ),
      ),
    );
  }
}
