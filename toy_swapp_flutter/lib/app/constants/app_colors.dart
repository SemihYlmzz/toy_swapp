import 'package:flutter/material.dart';

class AppColors {
  const AppColors();


  static const girlToyGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    colors: [
      Colors.pinkAccent,
      Color.fromARGB(255, 218, 7, 77),
    ],
  );
  static const boyToyGradient = LinearGradient(
    end: Alignment.topRight,
    colors: [
      Colors.blueAccent,
      Color.fromARGB(255, 6, 57, 146),
    ],
  );
  static const unisexToyGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Colors.pinkAccent,
      Colors.blueAccent,
    ],
  );
}
