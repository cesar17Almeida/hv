import 'package:flutter/material.dart';

const primaryColor = Color(0xFF3883FB);
const backgroundLightColor = Color(0xFFFCFCFC);
const backgroundDarkColor = Color(0xFF1F2026);
const navigationBarLightColor = Colors.white;
const navigationBarDarkColor = Color(0xFF30313C);

class Themes {
  static final themeLight = ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: navigationBarLightColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey[200],
      ),
      canvasColor: backgroundLightColor,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
      ));

  static final themeDark = ThemeData.dark().copyWith(
      colorScheme: const ColorScheme.dark(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: navigationBarDarkColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey[300],
      ),
      canvasColor: backgroundDarkColor,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
      ));
}
