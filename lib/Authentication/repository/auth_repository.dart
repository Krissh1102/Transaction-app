//import 'dart:convert';
import 'dart:developer';

import 'package:assignment3/core/api.dart';
import 'package:assignment3/core/failure.dart';
import 'package:assignment3/res/endpoints.dart';
import 'package:assignment3/res/strings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

final authRepoProvider = Provider((ref) {
  final api = ref.watch(apiProvider);
  return AuthRepo(api: api);
});

class AuthRepo {
  final API _api;

  AuthRepo({required API api}) : _api = api;

  Future<Response?> register(
      {required String phone,
      required String name,
      required String email,
      required String password}) async {
    final body = {
      "email": email,
      "name": name,
      "phone": phone,
      "password": password,
    };

    print('API Object: $_api');

    final result = await _api.postRequest(
        url: Endpoints.signupSendOTP, body: body, requireAuth: false);
    return result.fold(
      (Failure failure) {
        log(
          failure.message,
          name: LogLabel.auth,
        );
        return null;
      },
      (Response response) => response,
    );
  }

  Future<Response?> verifyOtp({
    required String otp,
    required String email,
  }) async {
    final body = {
      "email": email,
      "otp": otp,
    };

    final result = await _api.postRequest(
        url: Endpoints.sverifyotpsignup, body: body, requireAuth: false);
    return result.fold(
      (Failure failure) {
        log(
          failure.message,
          name: LogLabel.auth,
        );
        return null;
      },
      (Response response) => response,
    );
  }

  Future<Response?> login(
      {required String email, required String password}) async {
    final body = {
      "email": email,
      "password": password,
    };

    final result = await _api.postRequest(
        url: Endpoints.login, body: body, requireAuth: false);

    return result.fold(
      (Failure failure) {
        log(
          failure.message,
          name: LogLabel.auth,
        );
        return null;
      },
      (Response response) => response,
    );
  }

  Future<Response?> verifyOtpSignin({
    required String otp,
    required String email,
  }) async {
    final body = {
      "email": email,
      "otp": otp,
    };

    final result = await _api.postRequest(
        url: Endpoints.loginInOtp, body: body, requireAuth: false);
    return result.fold(
      (Failure failure) {
        log(
          failure.message,
          name: LogLabel.auth,
        );
        return null;
      },
      (Response response) => response,
    );
  }

  //Future<void> signOut() async {}

  // Email verfication-------------------------

  Future<Response?> forgetPass({
    required String email,
    required String role,
  }) async {
    final body = {
      "email": email,
      "role": role,
    };

    // final result = await _api.postRequest(
    //     url: Endpoints.forgotPass, body: body, requireAuth: false);
    // return result.fold(
    //   (Failure failure) {
    //     log(
    //       failure.message,
    //       name: LogLabel.auth,
    //     );
    //     return null;
    //   },
    //   (Response response) => response,
    // );
  }

  Future<Response?> resetPass(
      {required String otp,
      required String email,
      required String password,
      required String newPassword,
      required String role}) async {
    final body = {
      "email": email,
      "newPassword": password,
      "confirmPassword": newPassword,
      "role": role,
      "otp": otp,
    };

    // final result = await _api.postRequest(
    //     url: Endpoints.newPassword, body: body, requireAuth: false);
    // return result.fold(
    //   (Failure failure) {
    //     log(
    //       failure.message,
    //       name: LogLabel.auth,
    //     );
    //     return null;
    //   },
    //   (Response response) => response,
    // );
  }
}
