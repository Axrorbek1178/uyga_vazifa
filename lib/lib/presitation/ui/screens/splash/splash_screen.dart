import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/presitation/ui/resours/app_imagess.dart';

import '../../resours/App_colors.dart';
import '../../resours/app_imagess.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              AppImages.loaderSvg,
              height: 101,
              width: 89,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Login to your accaunt",
              style: TextStyle(color: AppColors.pink, fontSize: 23),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email address",
                  hintStyle: TextStyle(color: AppColors.pink, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password ",
                  hintStyle: TextStyle(color: AppColors.pink, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: AppColors.red, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment.center,
              width: 368,
              height: 55,
              color: AppColors.red,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 23, color: AppColors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Or",
                style: TextStyle(color: AppColors.pink, fontSize: 23),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.pink),
                    ),
                    width: 169,
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Geogle",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.pink),
                    ),
                    width: 169,
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Facebook",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: AppColors.pink,
                    fontSize: 23,
                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: AppColors.red,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
