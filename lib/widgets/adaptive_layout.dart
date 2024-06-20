import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/sized_config.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder MobileLayout, TabletLayout, DesktopLayout;
  const AdaptiveLayout(
      {super.key,
      required this.MobileLayout,
      required this.TabletLayout,
      required this.DesktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < SizedConfig.tablet) {
        return MobileLayout(context);
      } else if (constraints.maxWidth < SizedConfig.desktop) {
        return TabletLayout(context);
      } else {
        return DesktopLayout(context);
      }
    });
  }
}
