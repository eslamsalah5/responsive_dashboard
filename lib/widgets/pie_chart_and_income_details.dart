import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/sized_config.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/detailed_pie_chart.dart';
import 'package:responsive_dashboard/widgets/income_item_list_view.dart';
import 'package:responsive_dashboard/widgets/my_pie_chart.dart';

class PieChartAndIncomeDetails extends StatelessWidget {
  const PieChartAndIncomeDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return width <= 1750 && width >= SizedConfig.desktop
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16.0),
            child: DetailedPieChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: MyPieChart()),
              SizedBox(
                width: 40,
              ),
              Expanded(flex: 2, child: IncomeItemListView())
            ],
          );
  }
}
