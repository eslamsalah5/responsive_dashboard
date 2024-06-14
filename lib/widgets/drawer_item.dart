import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/selected_and_unselected_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItem;
  final bool isSelected;
  const DrawerItem({
    super.key,
    required this.drawerItem,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedDrawerItem(drawerItem: drawerItem)
        : UnSelectedDrawerItem(drawerItem: drawerItem);
  }
}
