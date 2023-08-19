
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_flutter_app/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends StateNotifier<User?> implements AuthRepository{
  AuthRepositoryImpl(): super(null);
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> loginWithEmailPassword(email,password) {
    throw UnimplementedError();
  }

  @override
  Future<User?> loginAnonymously() async {
    try {
      UserCredential userCredential = await firebaseAuth.signInAnonymously();
      state = userCredential.user;
    } on FirebaseAuthException { 
      rethrow;
    }
    return state;
  }

  @override
  Future<void> logout() async {
    try {
      await firebaseAuth.signOut();
      state = null;
    } catch (e) {
      rethrow;
    }
  }

}