import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF416FDF),
    onPrimary: Color(0x00ffffff),
    secondary: Color(0xFF6EAEE7),
    onSecondary: Color(0xFF6EBE7F),
    error: Color(0xFF6EAEE7),
    onError: Color(0xFF6EAEE7),
    surface: Color(0xFF6EAEE7),
    onSurface: Color(0xFF6EAEE7)
);

const darkColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF416FDF),
    onPrimary: Color(0x00ffffff),
    secondary: Color(0xFF6EAEE7),
    onSecondary: Color(0xFF6EBE7F),
    error: Color(0xFF6EAEE7),
    onError: Color(0xFF6EAEE7),
    surface: Color(0xFF6EAEE7),
    onSurface: Color(0xFF6EAEE7)
);

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(
        Colors.white70,
      ),
      foregroundColor:
      WidgetStateProperty.all<Color>(Colors.white),//test color
      elevation: WidgetStateProperty.all<double>(5.0), //shadow
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 18.0)),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
  ),
);