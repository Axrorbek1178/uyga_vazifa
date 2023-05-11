import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../resours/App_colors.dart';
import '../../resours/app_imagess.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            "Register",
            style: TextStyle(
                color: AppColors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Create new account",
            style: TextStyle(
              color: AppColors.pink,
              fontSize: 23,
            ),
          ),
          SizedBox(
            height: 62,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email address",
                hintStyle: TextStyle(color: AppColors.pink, fontSize: 20),
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
                hintText: "Phone number",
                hintStyle: TextStyle(color: AppColors.pink, fontSize: 20),
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
                hintText: "Password",
                hintStyle: TextStyle(color: AppColors.pink, fontSize: 20),
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
                hintText: "Confirm password",
                hintStyle: TextStyle(color: AppColors.pink, fontSize: 20),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // bu yerda teks joylashadi;

          Container(
            width: 368,
            height: 55,
            color: AppColors.red,
            child: Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  color: AppColors.pink,
                  fontSize: 23,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Login",
                style: TextStyle(color: AppColors.red, fontSize: 23),
              ),
            ],
          )
        ],
      ),
    );
  }
}
