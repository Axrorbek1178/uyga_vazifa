import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_imagess.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_styles.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/onboarding/onboarding_screen.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {

  // Bu birinchi ichga tushadigon overrida qilingan funksiya;
  @override
  void initState() {
    navigate();
    super.initState();
  }

  Future<void> navigate() async {
    await Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
      const OnBoardingScreen(),

      ),
      );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(),
          Column(
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
                    style: Styles.getLogoTextStyle().copyWith(color: AppColors.red),
                    children: [
                      TextSpan(
                        text: "wide",
                        style: Styles.getLogoTextStyle()
                            .copyWith(color: AppColors.black),
                      ),
                    ]),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getDots(5),
          ),
        ],
      ),
    );
  }

  _getDots(int n) => List.generate(n, (index) {
        double s = 100 / n;
        double remainder = 100 - (index * s);
        double opacity = remainder / 100;
        return Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.red.withOpacity(opacity),
          ),
        );
      });
}
