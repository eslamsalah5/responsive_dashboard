import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/my_card_page_view.dart';
import 'package:responsive_dashboard/widgets/my_dot_indicator.dart';

class CardSection extends StatefulWidget {
  const CardSection({
    super.key,
  });

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  int currentIndexPage = 0;
  late final PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentIndexPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'My card',
          style: Styles.semiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(pageController: _pageController),
        const SizedBox(
          height: 16,
        ),
        MyDotIndicator(currentIndexPage: currentIndexPage),
      ],
    );
  }
}
