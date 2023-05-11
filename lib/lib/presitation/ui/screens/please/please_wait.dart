import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
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
            height: 100,
          ),
          SvgPicture.asset(
            AppIcons.scan,
            width: 120,
            height: 120,
          ),
          SizedBox(height: 10,),
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
