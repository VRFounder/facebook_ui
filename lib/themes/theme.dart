import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.grey.shade900),
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade900,
  ),
  useMaterial3: true,
);

ThemeData darkMode = ThemeData(
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.grey.shade500),
  ),
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey.shade800,
    secondary: Colors.white,
  ),
  useMaterial3: true,
);
