import 'package:flutter/material.dart';

class ColorPalette {
  ColorPalette._();

  static const MaterialColor energyGreen = MaterialColor(
    _energyGreenPrimaryValue,
    <int, Color>{
      100: Color(0xFFCFEDE6),
      200: Color(0xFF86D2BF),
      300: Color(0xFF3EB799),
    },
  );

  static const int _energyGreenPrimaryValue = 0xFF0EA580;

  static const MaterialColor deepIndigo = MaterialColor(
    _deepIndigoPrimaryValue,
    <int, Color>{
      100: Color(0xFFCBCDD5),
      200: Color(0xFF7F879A),
      300: Color(0xFF394763),
    },
  );

  static const int _deepIndigoPrimaryValue = 0xFF0B2240;

  static const MaterialColor obsidian = MaterialColor(
    _obsidianPrimaryValue,
    <int, Color>{
      100: Color(0xFFD0CFCE),
      200: Color(0xFF908C89),
      300: Color(0xFF524E4D),
    },
  );

  static const int _obsidianPrimaryValue = 0xFF0B2240;

  static const MaterialColor lightGray = MaterialColor(
    _lightGrayPrimaryValue,
    <int, Color>{
      100: Color(0xFFE6F2EF),
      200: Color(0xFFCED9D6),
      300: Color(0xFFB6BFBD),
      400: Color(0xFF858C8A),
    },
  );

  static const int _lightGrayPrimaryValue = 0xFFE6F2EF;

  static const MaterialColor darkGray = MaterialColor(
    _darkGrayPrimaryValue,
    <int, Color>{
      100: Color(0xFF4D5865),
      200: Color(0xFF25354A),
      300: Color(0xFF0A2240),
      400: Color(0xFF081B33),
    },
  );

  static const int _darkGrayPrimaryValue = 0xFF081B33;

  static const Color white = Color(0xFFFAFFFE);
}
