import 'package:flutter/material.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/app_styles.dart';

class WButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap;

  const WButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.red,
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Text(text,style: AppStyles.getLabelStyle().copyWith(color: AppColors.white),
        textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
