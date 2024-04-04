import 'package:flutter/material.dart';

import 'themes.dart';

class CustomThemeData {
  const CustomThemeData();

  static ThemeData themeData(Palette palette) => ThemeData(
        brightness: palette.brightness,
        colorScheme: ColorScheme(
          brightness: palette.brightness,
          primary: palette.colorSchemePrimary,
          background: palette.colorSchemeBackground,
          surface: palette.colorSchemeSurface,
          error: palette.colorSchemeError,
          onSurface: palette.colorSchemeOnSurface,
          onBackground: palette.colorSchemeOnBackground,
          onPrimary: palette.colorSchemeOnPrimary,
          secondary: Colors.yellow,
          onSecondary: Colors.yellow,
          onError: Colors.yellow,
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: palette.colorSchemeSurface,
          thumbColor: palette.colorSchemePrimary,
          inactiveTrackColor: Colors.white30,
          valueIndicatorColor: palette.colorSchemeSurface,
        ),
        appBarTheme: AppBarTheme(
          color: palette.appBarColor,
          iconTheme: IconThemeData(
            color: palette.appBarIconColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: palette.inputDecorationEnabledBorderColor,
            ),
          ),
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: palette.drawerBackgroundColor,
        ),
        dividerTheme: DividerThemeData(
          thickness: 0.5,
          color: palette.dividerColor,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: palette.colorSchemeBackground,
          unselectedItemColor: palette.bottomNavigationBarUnselectedItemColor,
          selectedItemColor: palette.bottomNavigationBarSelectedItemColor,
          selectedIconTheme: IconThemeData(
            size: palette.bottomNavigationBarIconSize,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: palette.colorSchemePrimary,
            foregroundColor: palette.colorSchemeOnBackground,
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          contentTextStyle: TextStyle(
            color: palette.snackBarContentTextColor,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: palette.colorSchemeSurface,
        ),
        canvasColor: palette.canvasColor,
      );
}
