import 'package:flutter/material.dart';

import 'app_styles.dart';

class WPageTitle extends StatelessWidget {
  final String text;

  const WPageTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.getLabelStyle().copyWith(fontSize: 18),
    );
  }
}
