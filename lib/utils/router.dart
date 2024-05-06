import 'package:assignment3/src/HomeScreen.dart';
import 'package:assignment3/src/Login/NewUserScreen.dart';
import 'package:assignment3/src/Login/OTPlogin.dart';
import 'package:assignment3/src/Login/SignUpScreen.dart';
import 'package:assignment3/src/Login/otpScreen.dart';
import 'package:assignment3/src/Login/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: SplashView.routePath,
  routes: [
    GoRoute(
      path: SplashView.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),

    GoRoute(
      path: SignUpScreen.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpScreen();
      },
    ),
    GoRoute(
      path: NewUserScreen.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpScreen();
      },
    ),

    GoRoute(
      path: OTPLogin.routePath,
      builder: (context, state) {
        if (state.extra != null && state.extra is Map<String, String>) {
          Map<String, String> routeParams = state.extra as Map<String, String>;
          return OTPLogin(
            email:
                routeParams['email'] ?? '', // provide a default value if null

            testingotp: routeParams['testingotp'] ?? '',
          );
        } else {
          // Handle the case where state.extra is not as expected
          // You can throw an error, navigate to an error page, or handle it accordingly
          print('Unexpected state.extra type: ${state.extra.runtimeType}');
          return Container(); // Replace with your error handling logic
        }
      },
    ),

    GoRoute(
      path: HomeScreen.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),

    GoRoute(
      path: OTPscreen.routePath,
      builder: (context, state) {
        if (state.extra != null && state.extra is Map<String, String>) {
          Map<String, String> routeParams = state.extra as Map<String, String>;
          return OTPscreen(
            email:
                routeParams['email'] ?? '', // provide a default value if null

            testingotp: routeParams['testingotp'] ?? '',
          );
        } else {
          // Handle the case where state.extra is not as expected
          // You can throw an error, navigate to an error page, or handle it accordingly
          print('Unexpected state.extra type: ${state.extra.runtimeType}');
          return Container(); // Replace with your error handling logic
        }
      },
    ),
    // GoRoute(
    //   path: SignInSendOtpEmail.routePath,
    //   builder: (context, state) {
    //     return SignInSendOtpEmail();
    //   },
    // ),
    // GoRoute(
    //   path: ResetPass.routePath,
    //   builder: (context, state) {
    //     if (state.extra != null && state.extra is Map<String, String>) {
    //       Map<String, String> routeParams = state.extra as Map<String, String>;
    //       return ResetPass(
    //         email:
    //             routeParams['email'] ?? '', // provide a default value if null
    //       );
    //     } else {
    //       // Handle the case where state.extra is not as expected
    //       // You can throw an error, navigate to an error page, or handle it accordingly
    //       print('Unexpected state.extra type: ${state.extra.runtimeType}');
    //       return Container(); // Replace with your error handling logic
    //     }
    //   },
    // ),
    // GoRoute(
    //   path: OTPVerifySignin.routePath,
    //   builder: (BuildContext context, GoRouterState state) {
    //     // Check if state.extra is non-null before using it
    //     if (state.extra != null && state.extra is Map<String, String>) {
    //       Map<String, String> routeParams = state.extra as Map<String, String>;
    //       return OTPVerify(
    //         phoneNumber: routeParams['phoneNumber'] ??
    //             '', // provide a default value if null
    //         role: routeParams['role'] ?? '', // provide a default value if null
    //         testingotp: routeParams['testingotp'] ?? '',
    //       );
    //     } else {
    //       // Handle the case where state.extra is not as expected
    //       // You can throw an error, navigate to an error page, or handle it accordingly
    //       print('Unexpected state.extra type: ${state.extra.runtimeType}');
    //       return Container(); // Replace with your error handling logic
    //     }
    //   },
    // ),
  ],
);
