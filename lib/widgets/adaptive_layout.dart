import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder MobileLayout, TabletLayout, DesktopLayout;
  const AdaptiveLayout({
    super.key, required this.MobileLayout, required this.TabletLayout, required this.DesktopLayout
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: MobileLayout(context),
        );
      } else if (constraints.maxWidth < 900) {
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TabletLayout(context),
        );
      } else {
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: DesktopLayout(context),
        );
      }
    });
  }
}
