import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/widgets/income_item.dart';

class IncomeItemListView extends StatelessWidget {
  const IncomeItemListView({
    super.key,
  });

  final List<IncomeItemModel> items = const [
    IncomeItemModel(
        title: 'Design service', percentage: '40%', color: Color(0xff208CC8)),
    IncomeItemModel(
        title: 'Design product', percentage: '25%', color: Color(0xff4EB7F2)),
    IncomeItemModel(
        title: 'Product royalti', percentage: '20%', color: Color(0xff064061)),
    IncomeItemModel(
        title: 'Other', percentage: '22%', color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => IncomeItem(
              model: e,
            ),
          )
          .toList(),
    );
    ListView.builder(
      itemBuilder: (context, index) {
        return IncomeItem(
          model: items[index],
        );
      },
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
    );
  }
}
