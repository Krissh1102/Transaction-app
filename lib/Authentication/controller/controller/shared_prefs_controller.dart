import 'package:assignment3/Authentication/controller/repository/shared_prefs_repo.dart';
import 'package:assignment3/core/type_def.dart';
import 'package:assignment3/core/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sharedPrefsControllerPovider = Provider((ref) {
  final repo = ref.watch(sharedPrefsRepoProvider);
  return SharedPrefsController(repo: repo);
});

class SharedPrefsController {
  final SharedPrefsRepo _repo;

  SharedPrefsController({required SharedPrefsRepo repo}) : _repo = repo;

  Future<String?> getCookie() async {
    return _repo.getCookie();
  }

  FutureVoid setCookie({required String cookie}) async {
    await _repo.setCookie(cookie);
  }

  Future<User?> getUser() async {
    return _repo.getCurrentUser();
  }

  FutureVoid setUser({required User user}) async {
    _repo.setCurrentUser(user);
  }

  Future<String?> getRole() async {
    return _repo.getRole();
  }

  FutureVoid clear() async {
    return _repo.clear();
  }
}
