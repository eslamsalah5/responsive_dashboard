import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle regular16 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xff064061));

  static const TextStyle medium16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xff064061) // Medium weight
      );

  static const TextStyle semiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff064061) // SemiBold weight
  );

  static const TextStyle semiBold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xff064061) // SemiBold weight
  );

  static const TextStyle regular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Color(0xffAAAAAA) 
  );

  static const TextStyle semiBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xff4EB7F2)  // SemiBold weight
  );

  static const TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color(0xffFAFAFA) 
  );

  static const TextStyle semiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xff4EB7F2)  // SemiBold weight
  );

  static const TextStyle bold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Color(0xff4EB7F2) 
  );

  static const TextStyle medium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
      color: Color(0xffFFFFFF)  // Medium weight
  );
}
