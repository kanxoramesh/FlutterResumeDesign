import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/palette.dart';

final theme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: GoogleFonts.openSansTextTheme(),
  primaryColorDark: const Color(0xff0A57F9),
  primaryColorLight: const Color(0xFF7DA4F6),
  primaryColor: const Color(0xff437DF7),
  accentColor: const Color(0xFF437DF7),
  scaffoldBackgroundColor: Palette.scaffold,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
);