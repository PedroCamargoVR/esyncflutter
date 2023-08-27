import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData mainTheme = ThemeData(
  colorScheme:
      ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark),
  useMaterial3: true,
  fontFamily: GoogleFonts.lato.toString(),
  iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white))),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.lato(fontSize: 14),
    bodyMedium: GoogleFonts.lato(fontSize: 18),
    bodyLarge: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.w700),
  ),
);
