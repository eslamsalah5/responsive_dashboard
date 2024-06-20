class TransactionItemModel {
  final String title;
  final String subtitle;
  final String amount;
  final bool isWithdrawal;

  const TransactionItemModel( {
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.isWithdrawal,
  });
}
