import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/un_selected_all_expenses_item_and_selected_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.model, required this.isSelected});
  final AllExpensesItemModel model;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedAllExpensesItem(model: model, isSelected: isSelected)
        : UnSelectedAllExpensesItem(model: model, isSelected: isSelected);
  }
}
