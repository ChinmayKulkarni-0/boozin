import 'package:flutter/material.dart';

class MyTheme {
  //
  MyTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    appBarTheme: const AppBarTheme(
      color:Color(0xFFFFFFFF),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Color(0xFFFFFFFF),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle2: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF000000),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.black,
      primaryVariant: Colors.black,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle2: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  );
}