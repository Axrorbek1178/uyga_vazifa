import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_brand_name.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_page_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _getAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            _getSearchBox(),
            SizedBox(
              height: 34,
            ),
            const WPageTitle(text: "Shop By Category"),
            SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Container(
                  width: 70,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppColors.colorE5E5E5, width: 2)),
                        width: 70,
                        height: 70,
                        child: Image.asset("assets/images/svg/bag.png"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _getAppBar() => AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: Colors.lightBlue,
                size: 45,
              ),
              const WBrandName(fontSize: 28),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://marketplace.canva.com/EAFEits4-uw/1/0/800w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-r0bPCSjUqg0.jpg"),
              ),
            ],
          ),
        ),
      );

  _getSearchBox() => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                  color: AppColors.shadowColor, blurRadius: 5, spreadRadius: 1),
            ]),
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
              child: Icon(
                Icons.search,
                color: AppColors.pink,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            hintText: "Search \"Smartphone\"",
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontFamily: 'MainFont'),
            suffixIcon: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.red,
              ),
              child: Icon(
                Icons.document_scanner,
                color: AppColors.white,
              ),
            ),
          ),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            fontFamily: 'MainFont',
          ),
          textInputAction: TextInputAction.search,
        ),
      );
}
