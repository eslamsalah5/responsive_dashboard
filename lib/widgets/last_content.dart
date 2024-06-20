import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_container.dart';
import 'package:responsive_dashboard/widgets/transaction_section.dart';

class LastContent extends StatelessWidget {
  const LastContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
        IncomeSection()
      ],
    );
  }
}
