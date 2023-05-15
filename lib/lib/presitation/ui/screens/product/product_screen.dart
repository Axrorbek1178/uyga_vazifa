import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:uyga_vazifa/lib/presitation/ui/provider/theme_notifier.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_styles.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/app_styles.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_button.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_stars.dart';

class ProductScreen extends StatefulWidget {
  final int index;
  const ProductScreen({Key? key,required this.index}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  PageController controller = PageController(initialPage: 0);

  int page = 0;
  int currentColorIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 260,
                child: Column(
                  children: [
                    Expanded(
                      child: PageView(
                        controller: controller,
                        onPageChanged: (int index) {
                          setState(() {
                            page = index;
                          });
                        },
                        physics: const BouncingScrollPhysics(),
                        children: _getImages(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _getDots(5, page),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: "title_${widget.index}",
                          child: Text(
                            "Laptop",
                            style: Styles.getLabelStyle()
                                .copyWith(fontSize: 20, color: AppColors.black),
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const WStars(mark: 3),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$120.00",
                          style:
                          Styles.getPriceStyle().copyWith(fontSize: 25),
                          overflow: TextOverflow.fade,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Available in stock",
                          style:
                          Styles.getLabelStyle().copyWith(fontSize: 20),
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
             _getDivider(),
              SizedBox(
                height: 35,
              ),
              Text(
                "Color Variant",
                style: Styles.getLabelStyle()
                    .copyWith(fontSize: 20, color: AppColors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: _getColorsWidjet()),
              _getDivider(),
              SizedBox(
                height: 35,
              ),
              ..._getChar(),
              _getDivider(),

              Text(
                "About this Iteam",
                style: Styles.getLabelStyle()
                    .copyWith(fontSize: 20, color: AppColors.black),
              ),
              SizedBox(height: 18,),

              Text(
                """Wow Express offers cash on delivery
services and fast delivery services
so that your customers.delivery services
so that your customers.""",
                style: Styles.getContentStyle(),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          child: WButton(onTap: () {}, text: 'Add To Cart',)),
    );
  }


  _getDivider()=> const Padding(
    padding:  EdgeInsets.only(top: 35,bottom: 30),
    child: Divider(
      color: Color(0xFFCCCCCC),
      thickness: 1,
    ),
  );

_getChar()=>List.generate(5, (index) => _getCHarIteam());

  _getCHarIteam() =>
      Padding(
        padding: const EdgeInsets.only(bottom: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Brand", style: AppStyles.getLabelStyle().copyWith(fontSize: 18),),
            const SizedBox(width: 16,),
            Text("Noise", style: AppStyles.getLabelStyle().copyWith(
                fontSize: 18, color: Color(0xFFAAAAAA)),)
          ],
        ),
      );



  List<Color> colors = [
    const Color(0xFF396036),
    const Color(0xFFCDBD69),
    const Color(0xFF3B250F),
    const Color(0xFF69ABCE),
    const Color(0xFFC0C0C0),
  ];

  _getColorsWidjet({ int currentColorIndex = 0}) =>
      List.generate(
        colors.length,
            (index) =>
            GestureDetector(
              onTap: () {
                setState(() {
                  this.currentColorIndex = index;
                });
              },
              child: Container(
                width: 45,
                height: 45,
                margin: const EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: index == currentColorIndex
                          ? colors[index]
                          : Colors.transparent,
                      width: 2),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colors[index],
                  ),
                ),
              ),
            ),
      );

  _getDots(int n, int activeIndex) =>
      List.generate(n, (index) {
        return Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == activeIndex
                ? AppColors.red
                : AppColors.red.withOpacity(0.5),
          ),
        );
      });

  _getImages() =>
      List.generate(
        5,
            (index) =>
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                  tag: "product_${widget.index}",
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3l1x_9pS2MAxF1Kt0n5BGN9Cb9EbW3QS7LA&usqp=CAU",
                    width: 260,
                    height: 240,
                  ),
                ),
              ],
            ),
      );
}
