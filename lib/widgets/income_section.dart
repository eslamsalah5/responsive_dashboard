import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/income_item.dart';
import 'package:responsive_dashboard/widgets/income_item_list_view.dart';
import 'package:responsive_dashboard/widgets/monthly_container.dart';
import 'package:responsive_dashboard/widgets/my_container.dart';
import 'package:responsive_dashboard/widgets/my_pie_chart.dart';
import 'package:responsive_dashboard/widgets/pie_chart_and_income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              'Income',
              style: Styles.semiBold20(context),
            ),
            const Spacer(),
            const MonthlyContainer(),
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        const PieChartAndIncomeDetails(),
      ],
    ));
  }
}
