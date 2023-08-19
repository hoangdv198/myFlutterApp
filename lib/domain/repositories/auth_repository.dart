import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class AuthRepository{

  Future<void> loginWithEmailPassword(String email, String password);

  Future<User?> loginAnonymously();

  Future<void> logout();
}
