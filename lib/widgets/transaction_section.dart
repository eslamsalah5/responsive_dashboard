import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/transaction_list_view.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
             Text('Transaction History', style: Styles.semiBold20(context),),
            const Spacer(),
            Text('See all',
                style:
                    Styles.medium16(context).copyWith(color: const Color(0xff4EB7F2))),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: Styles.medium16(context).copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionListView(),
      ],
    );
  }
}
