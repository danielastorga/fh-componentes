import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData themelight = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,

      //AppBar Theme
      appBarTheme:
          const AppBarTheme(color: primary, elevation: 3, centerTitle: false),

      //TextButton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));
}
