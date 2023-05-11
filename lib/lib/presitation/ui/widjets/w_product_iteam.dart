import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_imagess.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/app_styles.dart';

class WProductIteam extends StatelessWidget {
  GestureTapCallback ontap;

  WProductIteam({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFFF7F7F7),
            ),
            child: Image.asset(AppImages.sumka_img),
          ),
          const SizedBox(
            height: 20,
          ),
          _getStars(3),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Smart Watches",
            style: AppStyles.getLabelStyle(),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "\$120.00",
            style: AppStyles.getPriceStyle(),
          ),
        ],
      ),
    );
  }

  _getStars(int mark) {
    return Row(
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
