import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/user_info_item_model.dart';
import 'package:responsive_dashboard/utils/imageAssets.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/form_section.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/my_button.dart';
import 'package:responsive_dashboard/widgets/my_container.dart';
import 'package:responsive_dashboard/widgets/quick_header.dart';
import 'package:responsive_dashboard/widgets/title_with_text_field.dart';
import 'package:responsive_dashboard/widgets/user_info_item.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickHeader(),
          const SizedBox(
            height: 36,
          ),
          const LatestTransaction(),
          const Divider(
            color: Color(0xffF1F1F1),
            height: 48,
          ),
          const FormSection(),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: MyButton(
                  backgroundColor: Colors.transparent,
                  textColor: const Color(0xff4EB7F2),
                  title: 'Add more details',
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: MyButton(
                  title: 'Send Money',
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
