import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_item_model.dart';
import 'package:responsive_dashboard/utils/imageAssets.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_list_view.dart';
import 'package:responsive_dashboard/widgets/selected_and_unselected_drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(
      title: 'Setting system',
      assetImage: Assets.imagesSetting,
    ),
    DrawerItemModel(
      title: 'Logout account',
      assetImage: Assets.imagesLogout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.6,
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: UserInfoItem(
                model: UserInfoItemModel(
                    assetImage: Assets.imagesAvatar1,
                    title: 'Lekan Okeowo',
                    subtitle: 'demo@gmail.com'),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 8)),
            const DrawerListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Expanded(child: SizedBox(height: 20)),
                  UnSelectedDrawerItem(
                    drawerItem: drawerItems[0],
                  ),
                  UnSelectedDrawerItem(
                    drawerItem: drawerItems[1],
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ],
        ));
  }
}
