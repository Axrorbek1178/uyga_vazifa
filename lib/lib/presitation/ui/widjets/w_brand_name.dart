import 'package:flutter/material.dart';

import '../resours/App_colors.dart';

class WBrandName extends StatelessWidget {
  final double fontSize;

  const WBrandName({Key? key, this.fontSize = 38}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: "Swip",
          children: [
            TextSpan(
              text: "Wide",
              style: TextStyle(
                fontSize: fontSize,
                color: AppColors.black,
              ),
            ),
          ],
          style: TextStyle(
            fontSize: fontSize,
            color: AppColors.red,
            fontWeight: FontWeight.w800,
          )),
    );
  }
}
