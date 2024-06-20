import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/middle_content.dart';
import 'package:responsive_dashboard/widgets/my_container.dart';
import 'package:responsive_dashboard/widgets/transaction_section.dart';

class DesktopDashboardLayaout extends StatelessWidget {
  const DesktopDashboardLayaout({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                            top: 40.0, bottom: 32.0, start: 32.0, end: 24),
                        child: MiddleContent(),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(top: 40.0),
                            child: MyContainer(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CardSection(),
                                  Divider(
                                    height: 40,
                                    color: Color(0xffF1F1F1),
                                  ),
                                  TransactionSection(),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Expanded(child: IncomeSection())
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
