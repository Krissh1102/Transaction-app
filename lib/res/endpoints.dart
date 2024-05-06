import 'package:assignment3/res/base.dart';

/// Contains all the API endpoints used in the application.
/// Example :
///
/// An endpoint can be used the following way
/// ```dart
/// final response = await http.get(Endpoints.getUser)
/// ```

class Endpoints {
  static const _base = BasePaths.baseUrl;

  static const signupSendOTP = "$_base/signup";

  static const sverifyotpsignup = "$_base/verify-otp";

  static const login = "$_base/login";

  static const loginInOtp = "$_base/verify-login-otp";
}
