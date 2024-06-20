import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class UserInfoItem extends StatelessWidget {
  final UserInfoItemModel model;
  const UserInfoItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(model.assetImage),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            model.title,
            style: Styles.semiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            model.subtitle,
            style: Styles.regular12(context),
          ),
        ),
      ),
    );
  }
}
