import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColorDark: Color(0xFF125C02),
  primaryColor: Colors.deepPurpleAccent,
  primaryColorLight: Colors.white54,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF125C02),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  backgroundColor: Color(0xFF125C02),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Color(0xFF9EFF9C),
      backgroundColor: Colors.deepPurpleAccent,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
  ),
  buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme(
          primary: Colors.deepPurpleAccent,
          primaryVariant: Colors.deepPurpleAccent,
          secondary: Colors.deepPurpleAccent,
          secondaryVariant: Colors.deepPurpleAccent,
          surface: Colors.deepPurpleAccent,
          background: Colors.deepPurpleAccent,
          error: Colors.redAccent,
          onPrimary: Colors.deepPurpleAccent,
          onSecondary: Colors.deepPurpleAccent,
          onSurface: Colors.deepPurpleAccent,
          onBackground: Colors.deepPurpleAccent,
          onError: Colors.redAccent,
          brightness: Brightness.dark),
      disabledColor: Colors.black26),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.deepPurpleAccent,
    filled: true,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
  ),
  appBarTheme: AppBarTheme(backgroundColor: Color(0xFF046347)),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.white),
  ),
);
