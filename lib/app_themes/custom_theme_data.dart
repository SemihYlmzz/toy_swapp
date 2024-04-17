import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_themes.dart';

class CustomThemeData {
  const CustomThemeData();

  static ThemeData themeData(Palette palette) => ThemeData(
        brightness: palette.brightness,
        primaryColor: palette.primaryColor,
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
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: palette.primaryColor,
          selectionColor: palette.colorSchemeOnBackground.withOpacity(0.4),
          selectionHandleColor: Colors.pinkAccent,
        ),
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: palette.primaryColor,
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: palette.colorSchemeSurface,
          thumbColor: palette.colorSchemePrimary,
          inactiveTrackColor: Colors.white30,
          valueIndicatorColor: palette.colorSchemeSurface,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(palette.primaryColor),
          ),
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(palette.primaryColor),
            overlayColor: MaterialStateProperty.all(
              palette.colorSchemeOnBackground.withOpacity(0.35),
            ),
            foregroundColor:
                MaterialStateProperty.all(palette.colorSchemeOnBackground),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: palette.colorSchemeBackground,
          unselectedItemColor: palette.bottomNavigationBarUnselectedItemColor,
          selectedItemColor: palette.bottomNavigationBarSelectedItemColor,
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
