import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/imageAssets.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/my_border_container.dart';

class MonthlyContainer extends StatelessWidget {
  const MonthlyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyBorderContainer(
      child: Row(
        children: [
          Text(
            'Monthly',
            style: Styles.medium16(context),
          ),
          const SizedBox(width: 18),
          SvgPicture.asset(Assets.imagesArrowDown),
        ],
      ),
    );
  }
}
