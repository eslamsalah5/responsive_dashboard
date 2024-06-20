import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/imageAssets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({
    super.key,
  });

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      title: 'Balance',
      subtitle: 'April 2022',
      assetImage: Assets.imagesBalance,
      amount: '\$20,129',
    ),
    AllExpensesItemModel(
      title: 'Income',
      subtitle: 'April 2022',
      assetImage: Assets.imagesIncome,
      amount: '\$20,129',
    ),
    AllExpensesItemModel(
      title: 'Expenses',
      subtitle: 'April 2022',
      assetImage: Assets.imagesExpenses,
      amount: '\$20,129',
    ),
  ];
  int selectedIndex = 0;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          child: AllExpensesItem(
            model: items[0],
            isSelected: selectedIndex == 0,
          ),
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          child: AllExpensesItem(
            model: items[1],
            isSelected: selectedIndex == 1,
          ),
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          child: AllExpensesItem(
            model: items[2],
            isSelected: selectedIndex == 2,
          ),
        ),
      ),
    ]);
  }
}
