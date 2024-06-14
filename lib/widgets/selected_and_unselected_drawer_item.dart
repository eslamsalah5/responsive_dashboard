
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class SelectedDrawerItem extends StatelessWidget {
  const SelectedDrawerItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 20.0),
      child: ListTile(
          leading: SvgPicture.asset(drawerItem.assetImage),
          title: Text(
            drawerItem.title,
            style: Styles.bold16,
          ),
          trailing: Container(
            width: 3.27,
            color: const Color(0xff4EB7F2),
          )),
    );
  }
}

class UnSelectedDrawerItem extends StatelessWidget {
  const UnSelectedDrawerItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 20.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItem.assetImage),
        title: Text(
          drawerItem.title,
          style: Styles.regular16,
        ),
      ),
    );
  }
}
