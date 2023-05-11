import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        actions: [
          SvgPicture.asset(
            AppIcons.heart,
            width: 20,
            color: Colors.black,
          ),
          SizedBox(
            width: 16,
          ),
        ],
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (int index) {},
                    physics: const BouncingScrollPhysics(),
                    children:
                     _getImages(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  _getImages() => List.generate(5, (index) =>  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3l1x_9pS2MAxF1Kt0n5BGN9Cb9EbW3QS7LA&usqp=CAU",
        width: 260,
        height: 240,
      ),
    ],
  ),
  );
}
