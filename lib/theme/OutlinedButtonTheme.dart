import 'package:flutter/material.dart';

class NOutlinedButtonTheme {
  NOutlinedButtonTheme._();

  //Light theme
  static final lightOutlinedbuttontheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      textStyle: const TextStyle(color: Colors.black),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      side: const BorderSide(color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 10),
    ),
  );

  //Dark theme
  static final darkOutlinedbuttontheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 10),
    ),
  );
}
