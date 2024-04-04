import 'package:flutter/material.dart';

import 'themes.dart';

class DarkThemePalette implements Palette {
  const DarkThemePalette();

  // Brightness
  @override
  Brightness get brightness => Brightness.dark;

  // Bottom Navigation Bar
  @override
  double get bottomNavigationBarIconSize => 30;
  @override
  Color get bottomNavigationBarSelectedItemColor => Colors.white;
  @override
  Color get bottomNavigationBarUnselectedItemColor => Colors.white24;

  // Color Scheme
  @override
  Color get colorSchemeBackground => const Color(0xFF111111);
  @override
  Color get colorSchemeOnBackground => Colors.white;
  @override
  Color get colorSchemeOnSurface => Colors.white;
  @override
  Color get colorSchemePrimary => Colors.deepPurpleAccent;
  @override
  Color get colorSchemeSurface => Colors.deepPurple.shade800;
  @override
  Color get colorSchemeError => Colors.red.shade900;
  @override
  Color get colorSchemeOnPrimary => Colors.white;

  // App Bar
  @override
  Color get appBarColor => const Color(0xFF111111);
  @override
  Color get appBarIconColor => Colors.white;

  // Divider
  @override
  Color get dividerColor => Colors.white;

  // Drawer
  @override
  Color get drawerBackgroundColor => const Color(0xFF181818);

  // Input Decoration
  @override
  Color get inputDecorationEnabledBorderColor => Colors.white;

  // Snack Bar
  @override
  Color get snackBarContentTextColor => Colors.white;

  // Canvas
  @override
  Color get canvasColor => const Color(0xFF303030);
}
