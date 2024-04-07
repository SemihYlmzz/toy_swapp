import 'package:auth_repository/auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthRepositoryInitializer {
  static Future<AuthRepository> initialize() async {
    await Firebase.initializeApp();
    return  AuthRepository();
  }
}
