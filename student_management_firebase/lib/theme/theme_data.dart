import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: Colors.cyan,
    scaffoldBackgroundColor: Colors.blueGrey[900],
    fontFamily: 'Open Sans Italic',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        backgroundColor: Colors.cyan[300],
        textStyle: const TextStyle(
          fontFamily: 'Open Sans Italic',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(255, 210, 168, 168),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.yellow,
      elevation: 4,
      shadowColor: Colors.black,
      titleTextStyle: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
    ),
  );
}
