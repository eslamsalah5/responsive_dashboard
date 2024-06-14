import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/desktop_dashboard_layaout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        MobileLayout: (context) => const SizedBox(),
        TabletLayout: (context) => const SizedBox(),
        DesktopLayout: (context) => const DesktopDashboardLayaout(),
      ),
    );
  }
}