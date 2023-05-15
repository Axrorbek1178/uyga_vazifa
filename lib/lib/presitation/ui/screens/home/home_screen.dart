import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_imagess.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/home/category_data.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/product/product_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/app_styles.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_brand_name.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_category.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_page_title.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/w_product_iteam.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: AppColors.white,
      appBar: _getAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            _getSearchBox(),
            const SizedBox(
              height: 34,
            ),
            const WPageTitle(text: "Shop By Category"),
            const SizedBox(
              height: 22,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                  categories.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                        right: categories.length - 1 != index ? 30.0 : 0),
                    child: WCategory(
                      icon: categories[index].icon,
                      text: categories[index].text,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 63,
            ),
            const WPageTitle(text: "Newest Arrival"),
            const SizedBox(
              height: 22,
            ),
            Expanded(
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      mainAxisExtent: 260,
                      crossAxisCount: 2),
                  children: List.generate(
                    8,
                    (index) => WProductIteam(
                      index: index,
                      ontap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ProductScreen(index: index,)),
                        );
                      },
                    ),
                  )),
            )
          ],
        ),
      ),

      drawer: _getDrawer(),
    );
  }

  _getDrawer() => Drawer(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                SvgPicture.asset(
                  AppImages.logoSvg,
                  width: 89,
                ),
                const SizedBox(
                  height: 28,
                ),
                const WBrandName(
                  fontSize: 28,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: const Divider(
                      thickness: 2,
                      color: Color(0xFFCCCCCC),
                    )),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            _getMenuIteam(text: "Rewards", icon: AppIcons.gift),
            _getMenuIteam(text: "Help", icon: AppIcons.help),
            _getMenuIteam(text: "Contact Us", icon: AppIcons.quotMark),
            _getMenuIteam(text: "Privacy Policy", icon: AppIcons.privacy),
            _getMenuIteam(text: "Logout", icon: AppIcons.logout),
          ],
        ),
      );

  _getMenuIteam({required String text, required String icon}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: AppColors.red,
            child: SvgPicture.asset(icon),
          ),
          title: Text(
            text,
            style: AppStyles.getLabelStyle(),
          ),
        ),
      );

  _getAppBar() => AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _key.currentState!.openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    AppIcons.menu,
                  ),
                ),
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
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
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
            hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontFamily: 'MainFont'),
            suffixIcon: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.red,
              ),
              child: const Icon(
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
