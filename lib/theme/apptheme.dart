import 'package:assignment3/theme/ElevatedButtonTheme.dart';
import 'package:assignment3/theme/FloatingActionButtonTheme.dart';
import 'package:assignment3/theme/OutlinedButtonTheme.dart';
import 'package:assignment3/theme/TextFormFeildTheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyThemePreferences {
  static const THEME_KEY = "theme_key";

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(THEME_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(THEME_KEY) ?? false;
  }
}

class ThemeProvider extends ChangeNotifier {
  bool? _isDark = true;
  late MyThemePreferences _preferences;
  bool get isDarkk => _isDark != true;

  ModelTheme() {
    _isDark = false;
    _preferences = MyThemePreferences();
    getPreferences();
  }

//Switching the themes
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}

class Napptheme {
  Napptheme._();

  //Light theme
  static ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(color: Colors.white),
      brightness: Brightness.light,
      primaryColor: Colors.black,
      textTheme: TextTheme(
          displayMedium: GoogleFonts.plusJakartaSans(color: Colors.black)),
      outlinedButtonTheme: NOutlinedButtonTheme.lightOutlinedbuttontheme,
      elevatedButtonTheme: NElevatedButton.lightElevatedbutton,
      inputDecorationTheme: NtextFormFieldTheme.lightInputDecorationTheme,
      floatingActionButtonTheme: NFloatingButtonTheme.lightTheme,
      dividerColor: Colors.black);

  //Dark theme
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      textTheme: TextTheme(
          displayMedium: GoogleFonts.plusJakartaSans(color: Colors.white)),
      outlinedButtonTheme: NOutlinedButtonTheme.darkOutlinedbuttontheme,
      elevatedButtonTheme: NElevatedButton.darkElevatedbutton,
      inputDecorationTheme: NtextFormFieldTheme.darkInputDecorationTheme,
      floatingActionButtonTheme: NFloatingButtonTheme.darkTheme,
      dividerColor: Colors.white);
}
