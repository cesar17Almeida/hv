import 'package:flutter/material.dart';

const primaryColor = Color(0xFF3883FB);
const backgroundLightColor = Color(0xFFFCFCFC);
const backgroundDarkColor = Color(0xFF1F2026);
const navigationBarLightColor = Colors.white;
const navigationBarDarkColor = Color(0xFF30313C);
const darkBackgroundColor = Color(0xFF2B2B2B);

class Themes {
  static final themeLight = ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light(
        primary: Colors.white,
        secondary: Color(0xFFD6EAF8),
        tertiary: Color(0xFF000000)
      ),
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   backgroundColor: primaryColor,
      //   foregroundColor: Colors.white,
      // ),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //   backgroundColor: navigationBarLightColor,
      //   selectedItemColor: primaryColor,
      //   unselectedItemColor: Colors.grey[200],
      // ),
      canvasColor: backgroundLightColor,
      appBarTheme: const AppBarTheme(
        // backgroundColor: Color(0xff001F3F),
        backgroundColor: Color(0xFFD6EAF8),
      )
  );

  static final themeDark = ThemeData.dark().copyWith(
      colorScheme: const ColorScheme.dark(
        // primary: Color(0xFF333333),
        primary: Color(0xFF000000),
        secondary: Color(0xff001F3F),
        tertiary: Color(0xFFFFFFFF)
      ),
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   backgroundColor: primaryColor,
      //   foregroundColor: Colors.white,
      // ),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //   backgroundColor: navigationBarDarkColor,
      //   selectedItemColor: primaryColor,
      //   unselectedItemColor: Colors.grey[300],
      // ),
      // canvasColor: backgroundDarkColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff001F3F),
      )
  );
}
