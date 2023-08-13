import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_flutter_app/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<void> loginWithEmailPassword(email,password) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<void> loginAnonymously() async {
    try {
      FirebaseAuth.instance.signInAnonymously();
    } catch (e) { 
      print("loginAnonymously print: $e");
    }
  }
}