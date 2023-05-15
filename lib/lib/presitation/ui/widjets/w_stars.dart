import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';

class WStars extends StatelessWidget {
  final int mark;
   const WStars({Key? key,required this.mark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
            (index) => SvgPicture.asset(
          AppIcons.star,
          color: AppColors.rewievEnabledColor,
        ),
      ),
    );
  }
}
