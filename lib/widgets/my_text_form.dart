
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class MyTextForm extends StatelessWidget {
  final String hintText;
  const MyTextForm({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        hintStyle: Styles.regular16(context).copyWith(color: const Color(0xffAAAAAA)),
        fillColor: const Color(0xffFAFAFA),
        enabled: true,
        enabledBorder: myBorder(),
        border: myBorder(),
        focusedBorder: myBorder(),
      ),
    );
  }

  OutlineInputBorder myBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(12));
  }
}
