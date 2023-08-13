
abstract class AuthRepository {
  Future<void> loginWithEmailPassword(String email,String password);
  
  Future<void> loginAnonymously();
}