import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_flutter_app/data/repositories/auth_repository_impl.dart';
import 'package:my_flutter_app/domain/repositories/auth_repository.dart';


final authRepositoryProvider = StateNotifierProvider<AuthRepositoryImpl,User?>((ref) {
  return AuthRepositoryImpl();
});

