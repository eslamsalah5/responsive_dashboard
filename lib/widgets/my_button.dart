
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor, textColor;
  final Function() onPressed;

  const MyButton({
    super.key,
    required this.title,
    this.backgroundColor,
    this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            backgroundColor ?? const Color(0xff4EB7F2),
          ),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: Styles.semiBold18(context).copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
