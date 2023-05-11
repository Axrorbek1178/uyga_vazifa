import 'package:flutter/material.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_imagess.dart';

class CategoryData {
  final String text;
  final String icon;

  const CategoryData({
    required this.text,
    required this.icon,
  });
}

List<CategoryData> categories = const [
  CategoryData(text: "Clothes", icon: AppImages.closesPn),
  CategoryData(text: "Laptop", icon: AppImages.laptopPn),
  CategoryData(text: "Bag", icon: AppImages.bagPn),
  CategoryData(text: "Shoes", icon: AppImages.krasofkaPn),
];
