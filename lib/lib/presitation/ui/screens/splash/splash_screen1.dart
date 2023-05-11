import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_imagess.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
            AppImages.logoSvg,
            width: 140,
          ),
          const SizedBox(
            height: 40,
          ),
           Text.rich(
            TextSpan(
                text: "Swip",
                style: TextStyle(
                  fontSize: 38,
                  color: AppColors.red,
                  fontWeight: FontWeight.w800
                ),
                children: [
                  TextSpan(
                    text: "wide",
                    style: TextStyle(
                      fontSize: 38,
                      color: AppColors.black,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
