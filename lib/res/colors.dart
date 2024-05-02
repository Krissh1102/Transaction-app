import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor purple = MaterialColor(
    _brownPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(245, 245, 245, 1),
      100: Color(0xFFD7CCC8),
      200: Color(0xFFBCAAA4),
      300: Color(0xFFA1887F),
      400: Color(0xFF8D6E63),
      500: Color(_brownPrimaryValue),
      600: Color(0xFF6D4C41),
      700: Color(0xFF5D4037),
      800: Color(0xFF4E342E),
      900: Color.fromRGBO(150, 91, 165, 1),
    },
  );
  static const int _brownPrimaryValue = 0xFF440101;
}

class WalkthroughColors {
  static const rose = Color(0xFFE5AFAF);

  static const purple = Color(0xFFC4BCFF);

  static const green = Color(0xFFC2D8BE);
}

class ProductColors {
  static const white = Color(0xFFFFFFFF);
}
