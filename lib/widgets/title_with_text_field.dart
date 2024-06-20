import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/my_text_form.dart';

class TitleWithTextField extends StatelessWidget {
  final String title, hintText;
  const TitleWithTextField({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.medium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        MyTextForm(
          hintText: hintText,
        ),
      ],
    );
  }
}
