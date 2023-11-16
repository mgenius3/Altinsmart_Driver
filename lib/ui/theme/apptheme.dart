import 'package:flutter/material.dart';

MaterialColor bodyColor = MaterialColor(
  0xFFB847EF,
  <int, Color>{
    50: Color(0xFFE8E5FB),
    100: Color(0xFFD9D2F9),
    200: Color(0xFFC6BEF6),
    300: Color(0xFFB3ACED),
    400: Color(0xFFA099E2),
    500: Color(0xFF8D86D7),
    600: Color(0xFF7A73CD),
    700: Color(0xFF6760C2),
    800: Color(0xFF544DB9),
    900: Color(0xFF413AB6),
  },
);

final ThemeData appTheme = ThemeData(
  primarySwatch: bodyColor,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.purpleAccent, // Set your desired cursor color here
    selectionHandleColor:
        Color(0xFF31D0AA), // Optional: Change the selection handle color
    selectionColor: Colors.grey, // Optional: Change the selection color
  ),
  // Add more theme configurations as needed
);

TextStyle defaultTextStyle = const TextStyle(
  fontFamily: 'Inter',
  fontSize: 16.0,
  color: Colors.black,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);
