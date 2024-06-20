import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class IncomeItem extends StatelessWidget {
  final IncomeItemModel model;
  const IncomeItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: model.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        model.title,
        style: Styles.regular16(context),
      ),
      trailing: Text(
        model.percentage,
        style:
            Styles.medium16(context).copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
