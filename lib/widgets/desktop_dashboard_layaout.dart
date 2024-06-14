import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DesktopDashboardLayaout extends StatelessWidget {
  const DesktopDashboardLayaout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        )
      ],
    );
  }
}
