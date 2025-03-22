import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';

class AppTheme {
  static final ThemeData dark = ThemeData(
    primaryColor: ColorsManager.gold,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: ColorsManager.gold),
        centerTitle: true,
        backgroundColor: ColorsManager.black,
        titleTextStyle: TextStyle(
            color: ColorsManager.gold,
            fontWeight: FontWeight.bold,
            fontSize: 20)),
    scaffoldBackgroundColor: ColorsManager.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.gold,
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.black,
      type: BottomNavigationBarType.fixed,
    ),
    textTheme: const TextTheme(
      labelSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: ColorsManager.ofWhite),
      labelMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: ColorsManager.white),
      labelLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: ColorsManager.black),
    ),
  );
}
