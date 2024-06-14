import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class UserInfoItem extends StatelessWidget {
  final String assetImage;
  final String title;
  final String subtitle;
  const UserInfoItem({
    super.key,
    required this.assetImage,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(assetImage),
        title: Text(
          title,
          style: Styles.semiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: Styles.regular12,
        ),
      ),
    );
  }
}
