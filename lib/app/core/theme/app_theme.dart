import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Cores base para facilitar a manutenção
  static const _green = Color.fromARGB(255, 6, 78, 58);
  static const _white1 = Color.fromARGB(255, 255, 255, 255);
  static const _green2 = Color.fromARGB(255, 167, 243, 208);
  static const _black = Color.fromARGB(255, 1, 1, 1);
  static const _red = Color.fromARGB(255, 162, 6, 6);
  static const _white2 = Color.fromARGB(255, 248, 248, 248);
  static const _grey = Color.fromARGB(255, 233, 233, 233);
  static const _black2 = Color.fromARGB(255, 35, 35, 35);

  // TEMA LIGHT
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: _green,
      onPrimary: _white1,
      secondary: _green2,
      onSecondary: _black,
      error: _red,
      onError: _white2,
      surface: _grey,
      onSurface: _white1,
    ),
    textTheme: GoogleFonts.robotoTextTheme(_textTheme(_green, _black2)),
  );

  // TEMA DARK
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: _green,
      onPrimary: _white1,
      secondary: _green2,
      onSecondary: _black,
      error: _red,
      onError: _white2,
      surface: _black2,
      onSurface: Color.fromARGB(255, 19, 19, 19),
    ),
    // textTheme: _textTheme(_white1, _white2),
    textTheme: GoogleFonts.robotoTextTheme(_textTheme(_white1, _white2)),
  );

  // Texto compartilhado (ou com cores dinâmicas)
  static TextTheme _textTheme(Color primaryColor, Color secundaryColor) => TextTheme(
    titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: primaryColor),
    titleMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: secundaryColor),
    titleSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: secundaryColor),
    bodyLarge: TextStyle(fontSize: 16, color: secundaryColor),
    bodyMedium: TextStyle(fontSize: 14, color: secundaryColor),
    bodySmall: TextStyle(fontSize: 12, color: secundaryColor),
  );
}
