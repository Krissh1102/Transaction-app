import 'package:assignment3/Authentication/controller/repository/shared_prefs_repo.dart';
import 'package:assignment3/core/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Watch the [authTokenProvider] to check if the user is logged in.
final authTokenProvider = StateProvider<String?>((ref) => null);
final currentRoleProvider = StateProvider<String?>((ref) => null);
final currentUserProvider = StateProvider<User?>((ref) => null);
final logoutProvider = Provider<void>((ref) {
  // Get the SharedPrefsRepo instance
  final sharedPrefsRepo = ref.read(sharedPrefsRepoProvider);
  // Clear all SharedPreferences data
  sharedPrefsRepo.clear();
});
