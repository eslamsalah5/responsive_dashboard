import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class QuickHeader extends StatelessWidget {
  const QuickHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: Styles.semiBold20(context),
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
