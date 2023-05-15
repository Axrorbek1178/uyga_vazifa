import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_imagess.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/app_styles.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_stars.dart';

class WProductIteam extends StatelessWidget {
  GestureTapCallback ontap;
  final int index;

  WProductIteam({
    Key? key,
    required this.ontap,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFFF7F7F7),
            ),
            child: Hero(
                tag: "product_$index",
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3l1x_9pS2MAxF1Kt0n5BGN9Cb9EbW3QS7LA&usqp=CAU"))
          ),
          const SizedBox(
            height: 20,
          ),
          const WStars(mark: 4),
          const SizedBox(
            height: 8,
          ),
          Hero(
            tag: "title_$index",
            child: Text(
              "Laptop",
              style: AppStyles.getLabelStyle(),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "\$120.00",
            style: AppStyles.getPriceStyle(),
          ),
        ],
      ),
    );
  }
}
