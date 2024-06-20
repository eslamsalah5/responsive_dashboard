import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_item_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({
    super.key,
  });

  final List<TransactionItemModel> items = const [
    TransactionItemModel(
        title: 'Cash Withdrawal',
        subtitle: '13 Apr, 2022 ',
        amount: '\$20,129',
        isWithdrawal: true),
    TransactionItemModel(
        title: 'Landing Page project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        amount: '\$2,000',
        isWithdrawal: false),
    TransactionItemModel(
        title: 'Juni Mobile App project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        amount: '\$20,129',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransactionItem(
              model: e,
            ),
          )
          .toList(),
    );
    // ListView.builder(
    //     itemBuilder: (context, index) => TransactionItem(
    //           model: items[index],
    //         ),
    //     itemCount: 3,
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics());
  }
}
