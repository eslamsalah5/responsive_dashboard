
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class MyDotIndicator extends StatelessWidget {
  const MyDotIndicator({
    super.key,
    required this.currentIndexPage,
  });

  final int currentIndexPage;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: currentIndexPage,
      decorator: DotsDecorator(
        activeColor: const Color(0xff4EB7F2),
        color: const Color(0xffE8E8E8),
        size: const Size.square(9.0),
        activeSize: const Size(32.0, 8.0),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}
