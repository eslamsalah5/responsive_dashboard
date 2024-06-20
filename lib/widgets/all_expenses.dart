import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_list_view.dart';
import 'package:responsive_dashboard/widgets/my_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MyContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          AllExpensesListView(),
        ],
      ),
    );
  }
}
