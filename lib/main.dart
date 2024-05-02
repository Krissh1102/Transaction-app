import 'package:assignment3/src//Login/NewUserScreen.dart';
import 'package:assignment3/theme/ElevatedButtonTheme.dart';
import 'package:assignment3/theme/FloatingActionButtonTheme.dart';
import 'package:assignment3/theme/OutlinedButtonTheme.dart';
import 'package:assignment3/theme/TextFormFeildTheme.dart';
import 'package:assignment3/theme/apptheme.dart';
import 'package:assignment3/utils/router.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(color: Colors.white),
            brightness: Brightness.light,
            primaryColor: Colors.black,
            textTheme: TextTheme(
                displayMedium:
                    GoogleFonts.plusJakartaSans(color: Colors.black)),
            outlinedButtonTheme: NOutlinedButtonTheme.lightOutlinedbuttontheme,
            elevatedButtonTheme: NElevatedButton.lightElevatedbutton,
            inputDecorationTheme: NtextFormFieldTheme.lightInputDecorationTheme,
            floatingActionButtonTheme: NFloatingButtonTheme.lightTheme,
            dividerColor: Colors.black));
  }
}
