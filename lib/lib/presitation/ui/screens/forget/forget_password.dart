import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../resours/App_colors.dart';
import '../../resours/app_imagess.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            SvgPicture.asset(
              AppImages.loaderSvg,
              width: 89,
              height: 101,
            ),
           const  SizedBox(
              height: 30,
            ),
            Text(
              "Forget",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Forget your password",
              style: TextStyle(
                color: AppColors.pink,
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 112,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 58),
              child: Text(
                "Please enter your email address belown/n,"
                "you will receive a link to create a new/n, "
                "password via email",
                style: TextStyle(fontSize: 23, color: AppColors.black),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email address",
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
                width: 368,
                height: 55,
                color: AppColors.red,
                child: Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 23, color: AppColors.white),
                )),
              ),
            ),
            SizedBox(height: 98,),
          ],
        ),
      ),
    );
  }
}
