import 'package:flutter/material.dart';

import '../resours/App_colors.dart';
import '../resours/app_imagess.dart';
import 'app_styles.dart';

class WCategory extends StatelessWidget {
  final String text;

  final String icon;

  const WCategory({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.colorE5E5E5, width: 2)),
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(20),
            child: Image.asset(icon),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: AppStyles.getLabelStyle(),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
