import 'package:flutter/material.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/home/home_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/please/please_wait.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/splash/splash_screen.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/splash/splash_screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homework',
      home: SplashScreen1(),
    );
  }
}
