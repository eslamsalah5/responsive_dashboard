import 'package:flutter/material.dart';

class MyBorderContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  const MyBorderContainer({
    super.key,
    required this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        border: Border.all(color: const Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
