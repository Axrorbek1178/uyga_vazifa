import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../resours/App_colors.dart';
import '../../resours/app_imagess.dart';

class PleaseWait extends StatefulWidget {
  const PleaseWait({Key? key}) : super(key: key);

  @override
  State<PleaseWait> createState() => _PleaseWaitState();
}

class _PleaseWaitState extends State<PleaseWait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 495,
          ),
          SvgPicture.asset(
            AppImages.facebookSvg,
            width: 120,
            height: 120,
            color: AppColors.red,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              "Please Wait",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
