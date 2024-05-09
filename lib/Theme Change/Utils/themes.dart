import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    // scaffoldBackgroundColor: Colors.white10,
    textTheme:  const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        color: Colors.grey,
      ),
    ),
    colorScheme:  ColorScheme.light(
      primary: Colors.grey.shade300,
      secondary: Colors.yellow,
      surface: Colors.red,
      onSurface: Colors.white
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
     scaffoldBackgroundColor: const Color(0xff1c1c1e),
    textTheme:  const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        color: Colors.grey,
      ),
    ),
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Colors.white12,
      secondary: Colors.red,
      surface: Colors.yellow.shade400,
      onSurface: Colors.grey.shade400
    ),
  );
}
