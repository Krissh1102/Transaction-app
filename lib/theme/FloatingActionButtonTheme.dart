import 'package:flutter/material.dart';

class NFloatingButtonTheme {
  NFloatingButtonTheme._();

  //light theme
  static final lightTheme = FloatingActionButtonThemeData(
    backgroundColor: Colors.black,
    focusColor: Colors.white,
  );

  //dark theme
  static final darkTheme = FloatingActionButtonThemeData(
      backgroundColor: Colors.white, focusColor: Colors.black);
}
