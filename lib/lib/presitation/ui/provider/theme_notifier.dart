import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isDark = false;

  Color col = Colors.white;
  Color get primaryColor => Colors.white;

  changeTheme() {
    isDark = !isDark;
    if (isDark) {
      col = Colors.black;
    } else {
      col = Colors.white;
    }
    notifyListeners();
  }
}
