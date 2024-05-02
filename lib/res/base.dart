import 'package:assignment3/res/config.dart';

class BasePaths {
  static const baseImagePath = "assets/images";
  static const baseAnimationPath = "assets/animations";
  static const basePlaceholderPath = "assets/placeholders";
  static const baseProdUrl = "https://ricoz-auth.onrender.com/api/v1";
  static const baseTestUrl = "https://ricoz-auth.onrender.com/api/v1";

  static const baseUrl = AppConfig.devMode ? baseTestUrl : baseProdUrl;
}
