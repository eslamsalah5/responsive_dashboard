import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/imageAssets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(
      title: 'Dashboard',
      assetImage: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      assetImage: Assets.imagesMyTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      assetImage: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      assetImage: Assets.imagesWallet,
    ),
    DrawerItemModel(
      title: 'My Investments',
      assetImage: Assets.imagesInvestments,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index != selectedIndex) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: DrawerItem(
            drawerItem: drawerItems[index],
            isSelected: selectedIndex == index,
          ),
        );
      },
      itemCount: drawerItems.length,
    );
  }
}
