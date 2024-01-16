import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade500,
    inversePrimary: Colors.grey.shade800,
    tertiary: Colors.green[200],
    onTertiary: const Color.fromARGB(255, 99, 177, 241),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: Colors.black,
    ),
  ),
);
