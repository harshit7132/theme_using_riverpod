// theme_provider.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../app_theme_data/theme_data.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeNotifier());

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData = lightTheme;

  ThemeData get themeData => _themeData;

  toggleDark() {
    _themeData = darkTheme;
    notifyListeners();
  }

  toggleLight() {
    _themeData = lightTheme;
    notifyListeners();
  }
}
