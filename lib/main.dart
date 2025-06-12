import 'package:favorite_places/screens/places.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 116, 194, 13),
  surface: const Color.fromARGB(255, 66, 66, 66),
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.surface,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.interTextTheme().copyWith(
    titleSmall: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
    ),
    titleMedium: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
    ),
    titleLarge: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
    ),
  ),
);

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Great Places', theme: theme, home: const PlacesScreen());
  }
}
