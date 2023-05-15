import 'package:flutter/material.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';

abstract class Styles {
  static TextStyle getLogoTextStyle() => const TextStyle(
      fontSize: 38,
      color: AppColors.black,
      fontWeight: FontWeight.w800);

  static TextStyle getTextActionStyle() => const TextStyle(
      fontSize: 18,
      color: AppColors.black,
      fontWeight: FontWeight.w700);

  static TextStyle getOnboardingTitle() => const TextStyle(
      fontSize: 26,
      color: AppColors.black,
      fontWeight: FontWeight.w700);
  static TextStyle getOnboardingSubTitle() => const TextStyle(
      fontSize: 18,
      color: AppColors.lightgrey,
      height: 1.4,
      fontWeight: FontWeight.w500);
  static TextStyle getPriceStyle() => const TextStyle(
      fontSize: 16,
      color: AppColors.red,
      fontFamily: 'MainFont',
      fontWeight: FontWeight.w800);
  static TextStyle getLabelStyle() => const TextStyle(
      fontSize: 16,
      color: AppColors.red,
      fontFamily: 'MainFont',
      fontWeight: FontWeight.w600);
  static TextStyle getContentStyle() => const TextStyle(
      fontSize: 16,
      color: Color(0xFFAAAAAA),
      fontFamily: 'MainFont',
      fontWeight: FontWeight.w500);
}
