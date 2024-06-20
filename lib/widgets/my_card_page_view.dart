
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      itemCount: 3,
      controller: _pageController,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsetsDirectional.only(end: 8.0),
        child: MyCard(),
      ),
    );
  }
}