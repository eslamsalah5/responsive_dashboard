import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_item_model.dart';
import 'package:responsive_dashboard/utils/imageAssets.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/user_info_item.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  final List<UserInfoItemModel> items = const [
    UserInfoItemModel(
        assetImage: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoItemModel(
        assetImage: Assets.imagesAvatar3,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoItemModel(
        assetImage: Assets.imagesAvatar2,
        title: 'Lekan Okeowo',
        subtitle: 'demo@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.medium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items
                .map(
                  (e) => IntrinsicWidth(
                    child: UserInfoItem(model: e),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
