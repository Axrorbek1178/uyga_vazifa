import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uyga_vazifa/lib/presitation/ui/provider/theme_notifier.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/home/home_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/main/main_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/please/please_wait.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/product/product_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/splash/splash_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/splash/splash_screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homework',
      home: MainScreen(),
    );
  }
}
