import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/sized_config.dart';

abstract class Styles {
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.normal,
      color: const Color(0xff064061),
    );
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xff064061), // Medium weight
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064061), // SemiBold weight
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064061), // SemiBold weight
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 12),
      fontWeight: FontWeight.normal,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 24),
      fontWeight: FontWeight.w600,
      color: const Color(0xff4EB7F2), // SemiBold weight
    );
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.normal,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 18),
      fontWeight: FontWeight.w600,
      color: const Color(0xff4EB7F2), // SemiBold weight
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.bold,
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xffFFFFFF), // Medium weight
    );
  }

  static double getResponsiveFontSize(BuildContext context, double fontSize) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < SizedConfig.tablet) {
      return width / 550;
    } else if (width < SizedConfig.desktop) {
      return width / 1050;
    } else {
      return width / 1900;
    }
  }
}
