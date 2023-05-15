import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/App_colors.dart';
import 'package:uyga_vazifa/lib/presitation/ui/resours/app_icons.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/cart/Cart_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/home/home_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/profile/profile.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/wishlist/wishlist.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this,initialIndex: currentTabIndex);
    super.initState();
  }
int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          HomeScreen(),
          WishlistScreen(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 94,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              spreadRadius: 3,
              blurRadius: 7,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          onTap: (index){
            setState(() {
              currentTabIndex=index;
            });
          },
          tabs: [
            SvgPicture.asset(
             currentTabIndex==0?AppIcons.home:AppIcons.homeOne,
              width: 24,
              height: 24,
              color: currentTabIndex==0?AppColors.red:AppColors.inActiveTabColor,
            ),
            SvgPicture.asset(
              currentTabIndex==1?AppIcons.wishlistFilled:AppIcons.heartOne,
              width: 24,
              height: 24,
              color: currentTabIndex==1?AppColors.red:AppColors.inActiveTabColor,
            ),
            SvgPicture.asset(
              currentTabIndex==2?AppIcons.cartFilled:AppIcons.vektor,
              width: 24,
              height: 24,
              color: currentTabIndex==2?AppColors.red:AppColors.inActiveTabColor,
            ),
            SvgPicture.asset(
              currentTabIndex==3?AppIcons.profileFilled:AppIcons.profile,
              width: 24,
              height: 24,
              color: currentTabIndex==3?AppColors.red:AppColors.inActiveTabColor,
            ),
          ],
        ),
      ),
    );
  }
}
