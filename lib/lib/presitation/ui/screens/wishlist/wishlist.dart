import 'package:flutter/material.dart';
import 'package:uyga_vazifa/lib/presitation/ui/widjets/app_styles.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist Screen",style: AppStyles.getLabelStyle(),),
      ),
    );
  }
}

