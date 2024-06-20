import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const ResponsiveDashBoard(),
      enabled: true,
    ),
  );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Dashboard',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF7F9FA),
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: const DashboardView(),
    );
  }
}
