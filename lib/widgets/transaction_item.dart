import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class TransactionItem extends StatelessWidget {
  final TransactionItemModel model;
  const TransactionItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              model.title,
              style: Styles.semiBold16(context),
            )),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(model.subtitle,
              style: Styles.regular16(context)
                  .copyWith(color: const Color(0xffAAAAAA))),
        ),
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerEnd,
          child: Text(model.amount,
              style: Styles.semiBold20(context).copyWith(
                  color: model.isWithdrawal
                      ? const Color(0xffF3735E)
                      : const Color(0xff7DD97B))),
        ),
      ),
    );
  }
}
