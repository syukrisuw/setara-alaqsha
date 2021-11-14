import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColorLight: Colors.black,
  primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)),
  brightness: Brightness.light,
  cardColor: const Color(0xFF9EFF9C),
  scaffoldBackgroundColor: Colors.lightGreenAccent,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  backgroundColor: Colors.lightGreenAccent,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.deepPurple,
      backgroundColor: Color(0xFF9EFF9C),
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
  ),
  buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme(
          primary: Colors.greenAccent,
          primaryVariant: Colors.greenAccent,
          secondary: Colors.greenAccent,
          secondaryVariant: Colors.greenAccent,
          surface: Colors.greenAccent,
          background: Colors.greenAccent,
          error: Colors.pinkAccent,
          onPrimary: Colors.greenAccent,
          onSecondary: Colors.greenAccent,
          onSurface: Colors.greenAccent,
          onBackground: Colors.greenAccent,
          onError: Colors.pinkAccent,
          brightness: Brightness.light),
      disabledColor: Colors.black26),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Color(0xFF9EFF9C),
    filled: true,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
  ),
  appBarTheme: AppBarTheme(backgroundColor: Colors.green),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.black54),
  ),
);
