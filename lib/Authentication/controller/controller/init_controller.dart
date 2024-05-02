import 'package:assignment3/Authentication/controller/controller/shared_prefs_controller.dart';
import 'package:assignment3/Authentication/controller/providers/common_providers.dart';
import 'package:assignment3/core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//import 'package:influencer/src/feature/home/controller/home_controller.dart';
final initControllerProvider = Provider((ref) => InitController(ref: ref));

class InitController {
  final Ref _ref;

  InitController({required Ref ref}) : _ref = ref;

  FutureVoid initUserAndToken() async {
    await _ref.read(sharedPrefsControllerPovider).getRole().then((value) {
      _ref.read(currentRoleProvider.notifier).update((state) => value);
    });

    await _ref.read(sharedPrefsControllerPovider).getCookie().then((value) {
      _ref.read(authTokenProvider.notifier).update((state) => value);
    });
  }

  //FutureVoid getHome() async {
  //  await _ref.read(homeControllerProvider).getHome();
  //}
}
