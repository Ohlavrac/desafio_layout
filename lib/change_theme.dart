import 'package:desafio_layout/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ChangeTheme with ChangeNotifier {
  static bool _isDark = true;

  ThemeData currentTheme() {
    return _isDark ? Apptheme.darkTheme : Apptheme.lightTheme;
  }

  void switchTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}