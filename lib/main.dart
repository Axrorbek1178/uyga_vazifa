import 'package:flutter/material.dart';
import 'package:uyga_vazifa/lib/presitation/ui/screens/home/home_screen.dart';

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
      home: HomeScreen(),
    );
  }
}
