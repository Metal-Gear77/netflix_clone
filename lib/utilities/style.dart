import 'package:flutter/material.dart';

class MyStyle {
  ThemeData themeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    // textTheme: TextTheme(
    //   displayLarge: TextStyle(color: Colors.white),
    //   displayMedium: TextStyle(color: Colors.white),
    //   displaySmall: TextStyle(color: Colors.white),
    //   headlineLarge: TextStyle(color: Colors.white),
    //   headlineMedium: TextStyle(color: Colors.white),
    //   headlineSmall: TextStyle(color: Colors.white),
    //   titleLarge: TextStyle(color: Colors.white),
    //   titleMedium: TextStyle(color: Colors.white),
    //   titleSmall: TextStyle(color: Colors.white),
    //   bodyLarge: TextStyle(color: Colors.white),
    //   bodyMedium: TextStyle(color: Colors.white),
    //   bodySmall: TextStyle(color: Colors.white),
    //   labelLarge: TextStyle(color: Colors.white),
    //   labelMedium: TextStyle(color: Colors.white),
    //   labelSmall: TextStyle(color: Colors.white),
    // ),
    // primaryTextTheme: TextTheme(
    //   displayLarge: TextStyle(color: Colors.white),
    //   displayMedium: TextStyle(color: Colors.white),
    //   displaySmall: TextStyle(color: Colors.white),
    //   headlineLarge: TextStyle(color: Colors.white),
    //   headlineMedium: TextStyle(color: Colors.white),
    //   headlineSmall: TextStyle(color: Colors.white),
    //   titleLarge: TextStyle(color: Colors.white),
    //   titleMedium: TextStyle(color: Colors.white),
    //   titleSmall: TextStyle(color: Colors.white),
    //   bodyLarge: TextStyle(color: Colors.white),
    //   bodyMedium: TextStyle(color: Colors.white),
    //   bodySmall: TextStyle(color: Colors.white),
    //   labelLarge: TextStyle(color: Colors.white),
    //   labelMedium: TextStyle(color: Colors.white),
    //   labelSmall: TextStyle(color: Colors.white),
    // ),
    // appBarTheme: AppBarTheme(backgroundColor: Colors.black),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 8),
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle:
          TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 8),
      showUnselectedLabels: true,
    ),
    colorScheme: ColorScheme(
        background: Colors.black,
        brightness: Brightness.dark,
        primary: Colors.white,
        onPrimary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.black,
        onError: Colors.black,
        onBackground: Colors.black,
        surface: Colors.black,
        onSurface: Colors.white),
  );
}
