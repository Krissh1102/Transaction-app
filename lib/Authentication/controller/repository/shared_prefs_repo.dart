import 'dart:convert';
import 'dart:developer';
import 'package:assignment3/core/type_def.dart';
import 'package:assignment3/core/user.dart';
import 'package:assignment3/res/config.dart';
import 'package:assignment3/res/strings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefsRepoProvider =
    Provider<SharedPrefsRepo>((ref) => SharedPrefsRepo());

class SharedPrefsRepo {
  final String _tokenKey = "COOKIE_TOKEN";
  final String _currentUserKey = "CURRENT_USER";
  final String _currentRoleKey = "CURRENT_ROLE";

  Future<String?> getCookie() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final cookie = prefs.getString(_tokenKey);
    if (AppConfig.devMode) {
      log("Reading cookie", name: LogLabel.sharedPrefs);
      log("Data : $cookie", name: LogLabel.sharedPrefs);
    }
    return cookie;
  }

  // Future<String?> getRole() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final role = prefs.getString(_currentRoleKey);
  //   if (AppConfig.devMode) {
  //     log("Reading role", name: LogLabel.sharedPrefs);
  //     log("Data : $role", name: LogLabel.sharedPrefs);
  //   }
  //   return role;
  // }

  Future<User?> getCurrentUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_currentUserKey);
    if (AppConfig.devMode) {
      log("Reading user", name: LogLabel.sharedPrefs);
      log("Data : $data", name: LogLabel.sharedPrefs);
    }
    final user = data != null ? User.fromJson(jsonDecode(data)) : null;
    return user;
  }

  FutureVoid setCurrentUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (AppConfig.devMode) {
      log("Saving user", name: LogLabel.sharedPrefs);
      log("Data : ${user.toJson()}", name: LogLabel.sharedPrefs);
    }
    prefs.setString(_currentUserKey, jsonEncode(user.toJson()));
  }

  FutureVoid setCookie(String cookie) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (AppConfig.devMode) {
      log("Saving cookie", name: LogLabel.sharedPrefs);
      log("Data : $cookie", name: LogLabel.sharedPrefs);
    }
    prefs.setString(_tokenKey, cookie);
  }

  FutureVoid setRole(String role) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (AppConfig.devMode) {
      log("Saving role", name: LogLabel.sharedPrefs);
      log("Data : $role", name: LogLabel.sharedPrefs);
    }
    prefs.setString(_currentRoleKey, role);
  }

  FutureVoid clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
