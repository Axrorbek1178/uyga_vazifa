import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/presitation/ui/resours/app_imagess.dart';

import '../../resours/App_colors.dart';
import '../../resours/app_imagess.dart';

class ResertPassword extends StatefulWidget {
  const ResertPassword({Key? key}) : super(key: key);

  @override
  State<ResertPassword> createState() => _ResertPasswordState();
}

class _ResertPasswordState extends State<ResertPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            SvgPicture.asset(
              AppImages.loaderSvg,
              width: 89,
              height: 101,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Reset",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Reset your password",
              style: TextStyle(
                color: AppColors.pink,
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 92,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Enter your New Password",
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "New passsword",
                  hintStyle: TextStyle(
                    color: AppColors.pink,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Confirm passsword",
                  hintStyle: TextStyle(
                    color: AppColors.pink,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                color: AppColors.red,
                width: 398,
                height: 55,
                child: Center(
                  child: Text(
                    "Change Password",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 98,
            ),
          ],
        ),
      ),
    );
  }
}
