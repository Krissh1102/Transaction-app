import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:assignment3/Authentication/controller/controller/shared_prefs_controller.dart';
import 'package:assignment3/Authentication/controller/providers/common_providers.dart';
import 'package:assignment3/Authentication/repository/auth_repository.dart';
import 'package:assignment3/res/strings.dart';
import 'package:assignment3/src/HomeScreen.dart';
import 'package:assignment3/src/Login/OTPlogin.dart';
import 'package:assignment3/src/Login/OTPscreen.dart';
import 'package:assignment3/utils/snackbar_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  final authRepo = ref.watch(authRepoProvider);
  return AuthController(authRepo: authRepo, ref: ref);
});

class AuthController extends StateNotifier<bool> {
  AuthController({required AuthRepo authRepo, required Ref ref})
      : _authRepo = authRepo,
        _ref = ref,
        super(false);

  final AuthRepo _authRepo;
  final Ref _ref;

  Future<void> register({
    required String phone,
    required String name,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    if (!state) {
      state = true;
      try {
        final response = await _authRepo.register(
          phone: phone,
          email: email,
          name: name,
          password: password,
        );
        if (response != null) {
          final data = jsonDecode(response.body);
          final status = data['success'];
          if (status == true) {
            SnackBarService.showSnackBar(
              context: context,
              message: data['message'],
            );

            context.push(
              OTPscreen.routePath,
              extra: {
                'email': email,
                'testingotp': data['data']['otp'].toString(),
              },
            );
            print('$response');
          } else {
            // SnackBarService.showSnackBar(
            //   context: context,
            //   message: 'error',
            // );
            print('error');
            state = false;
          }
        } else {
          // Handle null response
          print('Response is null');
          state = false;
        }
      } catch (e) {
        // Handle other exceptions
        print('Error: $e');
        log(FailureMessage.jsonParsingFailed, name: LogLabel.auth);
        state = false;
      }
      // Reset state after delay
      await Future.delayed(const Duration(seconds: 3));
      state = false;
    }
  }

  Future<void> verifyOtp(
      {required String otp,
      required String email,
      required BuildContext context}) async {
    if (!state) {
      state = true;
      _authRepo.verifyOtp(email: email, otp: otp).then((response) {
        if (response != null) {
          try {
            final data = jsonDecode(response.body);
            final status = data['status'];
            final token = data['data']['token'].toString();
            if (status == true) {
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'],
              );
              print('token: $token');

              context.go(HomeScreen.routePath);
              state = false;
              // final user = data['name'];
              //   if (data['name'] != "guest") {
              // _ref.read(sharedPrefsControllerPovider).setUser(user: user);
              // _ref.read(currentUserProvider.notifier).update((state) => user);

              //  context.go(HomeScreen.routePath);
              //   state = false;
              // } else {
              // the user does not have a name
              // navigate to the screen where a name can be entered.

              // }
            } else {
              // the user does not have a name
              // navigate to the screen where a name can be entered.
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'].toString(),
              );
              // context.go(SignupName.routePath);
              print('token: $token');

              _ref.read(sharedPrefsControllerPovider).setCookie(cookie: token);
              _ref.read(authTokenProvider.notifier).update((state) => token);

              state = false;
            }
          } catch (e) {
            log(FailureMessage.jsonParsingFailed, name: LogLabel.auth);
            state = false;
          }
        }
      });

      await Future.delayed(const Duration(seconds: 5));
      state = false;
    }
  }

  Future<void> login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    if (!state) {
      state = true;
      _authRepo
          .login(
        email: email,
        password: password,
      )
          .then((response) {
        if (response != null) {
          try {
            final data = jsonDecode(response.body);
            final status = data["success"];
            if (status == true) {
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'],
              );

              context.push(
                OTPLogin.routePath,
                extra: {
                  'email': email,

                  // 'testingotp': data['data']['otp'].toString(),
                },
              );
              print('$response');
            } else {
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'],
              );
              state = false;
            }
          } catch (e) {
            print('$e');
            log(FailureMessage.jsonParsingFailed, name: LogLabel.auth);
          }
        }
      });
      await Future.delayed(const Duration(seconds: 3));
      state = false;
    }
  }

  Future<void> verifyOtpSignin(
      {required String otp,
      required String email,
      required BuildContext context}) async {
    if (!state) {
      state = true;
      _authRepo
          .verifyOtpSignin(
        email: email,
        otp: otp,
      )
          .then((response) {
        if (response != null) {
          try {
            final data = jsonDecode(response.body);
            final status = data['status'];
            final token = data['data']['token'].toString();
            if (status == true) {
              SnackBarService.showSnackBar(
                context: context,
                message: data['token'].toString(),
              );
              print('token: $token');

              //context.go(HomeScreen.routePath);
              state = false;
              // final user = data['name'];
              //   if (data['name'] != "guest") {
              // _ref.read(sharedPrefsControllerPovider).setUser(user: user);
              // _ref.read(currentUserProvider.notifier).update((state) => user);

              //  context.go(HomeScreen.routePath);
              //   state = false;
              // } else {
              // the user does not have a name
              // navigate to the screen where a name can be entered.

              // }
            } else {
              // the user does not have a name
              // navigate to the screen where a name can be entered.
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'].toString(),
              );
              context.go(HomeScreen.routePath);
              print('token: $token');

              _ref.read(sharedPrefsControllerPovider).setCookie(cookie: token);
              _ref.read(authTokenProvider.notifier).update((state) => token);

              state = false;
            }
          } catch (e) {
            log(FailureMessage.jsonParsingFailed, name: LogLabel.auth);
            state = false;
          }
        }
      });

      await Future.delayed(const Duration(seconds: 5));
      state = false;
    }
  }

  Future<void> forgetPass(
      {required String email,
      required String role,
      required BuildContext context}) async {
    if (!state) {
      state = true;
      _authRepo
          .forgetPass(
        email: email,
        role: role,
      )
          .then((response) {
        if (response != null) {
          try {
            final data = jsonDecode(response.body);
            final status = data["success"];
            if (status == true) {
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'],
              );

              // context.push(ResetPass.routePath, extra: {
              //   'email': email,
              //   'role': role,
              // });
              state = false;
            } else {
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'],
              );
              state = false;
            }
          } catch (e) {
            print('$e');
            log(FailureMessage.jsonParsingFailed, name: LogLabel.auth);
          }
        }
      });
      await Future.delayed(const Duration(seconds: 5));
      state = false;
    }
  }

  Future<void> resetPass(
      {required String email,
      required String otp,
      required String role,
      required String password,
      required String newPassword,
      required BuildContext context}) async {
    if (!state) {
      state = true;
      _authRepo
          .resetPass(
        newPassword: newPassword,
        email: email,
        otp: otp,
        password: password,
        role: role,
      )
          .then((response) {
        if (response != null) {
          try {
            final data = jsonDecode(response.body);
            final status = data["success"];
            if (status == true) {
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'],
              );

              // context.push(HomeScreen.routePath, extra: {
              //   'email': email,
              //   "password": password,
              //   'role': role,
              // });
              state = false;
            } else {
              SnackBarService.showSnackBar(
                context: context,
                message: data['message'],
              );
              state = false;
            }
          } catch (e) {
            print('$e');
            log(FailureMessage.jsonParsingFailed, name: LogLabel.auth);
          }
        }
      });
      await Future.delayed(const Duration(seconds: 5));
      state = false;
    }
  }
}
