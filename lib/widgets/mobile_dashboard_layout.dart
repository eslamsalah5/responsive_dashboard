import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/last_content.dart';
import 'package:responsive_dashboard/widgets/middle_content.dart';

class MobileDashboardLayout extends StatelessWidget {
  const MobileDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomDrawer(),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: 40.0, start: 32.0, end: 24),
                  child: MiddleContent(),
                ),
                LastContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
