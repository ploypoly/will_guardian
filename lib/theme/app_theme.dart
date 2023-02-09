import 'package:flutter/material.dart';
import 'package:will_guardian/values/constants/color_palette.dart';

class AppTheme {
  final ThemeData themeData = ThemeData(
    fontFamily: 'Kurious',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: ColorPalette.obsidian,
        fontSize: 15,
        fontWeight: FontWeight.w600,
        fontFamily: 'Kurious',
      ),
      iconTheme: IconThemeData(
        color: ColorPalette.energyGreen,
      ),
      shadowColor: Color(0x14000000),
    ),
    scaffoldBackgroundColor: ColorPalette.white,
    primarySwatch: Colors.blue,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorPalette.energyGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        textStyle: const TextStyle(
          fontSize: 18,
          fontFamily: 'Kurious',
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: ColorPalette.energyGreen[100] ?? ColorPalette.energyGreen,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(10),
        textStyle: const TextStyle(
          fontFamily: 'Kurious',
          fontSize: 18,
        ),
        foregroundColor: ColorPalette.energyGreen,
      ),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 15,
        color: ColorPalette.darkGray,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
