import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFF5862A),
    primary: const Color(0xFFF68326),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
        fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: border,
  ),
);

InputBorder border = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
  borderSide: BorderSide(
    color: Color(0xFF887E7E),
  ),
);
