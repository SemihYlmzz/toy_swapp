import 'package:flutter/material.dart';

abstract class Palette {
  const Palette();

  // Brightness
  Brightness get brightness;
  
  // Primary Color
  Color get primaryColor;

  // Bottom Navigation Bar
  Color get bottomNavigationBarUnselectedItemColor;
  Color get bottomNavigationBarSelectedItemColor;

  // Color Scheme
  Color get colorSchemePrimary;
  Color get colorSchemeBackground;
  Color get colorSchemeSurface;
  Color get colorSchemeOnSurface;
  Color get colorSchemeOnBackground;
  Color get colorSchemeError;
  Color get colorSchemeOnPrimary;

  // App Bar
  Color get appBarColor;
  Color get appBarIconColor;

  // Input Decoration
  Color get inputDecorationEnabledBorderColor;

  // Drawer
  Color get drawerBackgroundColor;

  // Divider
  Color get dividerColor;

  // Snack Bar
  Color get snackBarContentTextColor;

  // Canvas
  Color get canvasColor;
}
