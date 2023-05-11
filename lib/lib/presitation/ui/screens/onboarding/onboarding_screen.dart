import 'package:flutter/material.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_imagess.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_styles.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/onboarding/onboarding_data.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/splash/splash_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingData> onboardingData = [
    OnBoardingData(
        title: "Discover New Products",
        subtitle:
            "Many new products are discovered bypeople simply happening upon themwhile being out and about in theworld",
        image: AppImages.onBoarding1Pn),
    OnBoardingData(
        title: "Earn Points For Shopping",
        subtitle:
            "The purpose of reward points is to providean incentive for customers to makerepeat purchases.",
        image: AppImages.onBoarding2Pn),
    OnBoardingData(
        title: "Get Fast Local Delivery",
        subtitle:
            "Wow Express offers cash on deliveryservices and fast delivery servicesso that your customers.",
        image: AppImages.onBoarding3Pn),
  ];
  PageController controller = PageController(initialPage: 0);
  int page = 0;

  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      children: [
        const SafeArea(child: SizedBox()),
        GestureDetector(
          onTap: () {
            if (page != onboardingData.length - 1) {
              setState(() {
                page++;
                controller.animateToPage(page,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
              });
            } else {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SplashScreen(),
                  ));
            }
          },
          child: Container(
            margin: EdgeInsets.only(top: 30, right: 30),
            alignment: Alignment.centerRight,
            child: Text(
              "Next",
              style: Styles.getTextActionStyle().copyWith(color: AppColors.red),
            ),
          ),
        ),
        Expanded(
          child: PageView(
            controller: controller,
            onPageChanged: (int index) {
              setState(() {
                page = index;
              });
            },
            physics: const BouncingScrollPhysics(),
            children: List.generate(onboardingData.length,
                (index) => _getPage(onboardingData[index])),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _getDots(onboardingData.length, page),
        ),
        SizedBox(
          height: 60,
        ),
      ],
    ));
  }

  _getPage(OnBoardingData data) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              data.image,
              width: width * 0.8,
            ),
            _getSpace(),
            Text(
              data.title,
              style: Styles.getOnboardingTitle(),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              data.subtitle,
              textAlign: TextAlign.center,
              style: Styles.getOnboardingSubTitle(),
            ),
          ],
        ),
      );

  _getSpace() => SizedBox(
        height: height * 0.08,
      );

  _getDots(int n, int activeIndex) => List.generate(n, (index) {
        return Container(
          width: 12,
          height: 12,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == activeIndex
                ? AppColors.red
                : AppColors.red.withOpacity(0.5),
          ),
        );
      });
}
