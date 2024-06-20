import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/desktop_dashboard_layaout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/mobile_dashboard_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        MobileLayout: (context) => const MobileDashboardLayout(),
        TabletLayout: (context) => const TabletDashboardLayout(),
        DesktopLayout: (context) => const DesktopDashboardLayaout(),
      ),
    );
  }
}
