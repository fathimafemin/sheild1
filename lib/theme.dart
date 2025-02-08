import 'package:flutter/material.dart';

final ThemeData womenSafetyTheme = ThemeData(
  primaryColor:
      Color.fromARGB(255, 193, 175, 181), // Pink color for women safety theme
  colorScheme: ColorScheme.light(
    primary: Color.fromARGB(255, 147, 139, 141), // Primary color
    secondary: Color(0xFFFF4081), // Accent color (replaces accentColor)
  ),
  scaffoldBackgroundColor: Color(0xFFFCE4EC), // Light pink background
  fontFamily: 'Roboto',
  textTheme: TextTheme(
    displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black87), // Replaces headline4
    bodyLarge:
        TextStyle(fontSize: 16, color: Colors.black87), // Replaces bodyText1
    bodyMedium:
        TextStyle(fontSize: 14, color: Colors.black87), // Replaces bodyText2
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFFE91E63),
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  ),
);
