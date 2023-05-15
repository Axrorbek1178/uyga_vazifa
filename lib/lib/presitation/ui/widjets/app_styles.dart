import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle getLabelStyle() => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontFamily: 'MainFont');

  static TextStyle getPriceStyle() => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: Color(0xFFF13005),
      fontFamily: 'MainFont');

  static TextStyle getContentStyle() => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xFFAAAAAA),
      fontFamily: 'MainFont');
}
