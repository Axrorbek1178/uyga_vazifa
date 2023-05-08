import 'package:flutter/material.dart';

class WPageTitle extends StatelessWidget {
  final String text;

  const WPageTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontFamily: 'MainFont'),
    );
  }
}
