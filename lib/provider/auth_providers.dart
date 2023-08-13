import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_flutter_app/data/repositories/auth_repository_impl.dart';
import 'package:my_flutter_app/domain/repositories/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl();
});
