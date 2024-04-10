import 'package:auth_repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthRepositoryInitializer {
  static Future<AuthRepository> initialize({
    FirebaseAuth? firebaseAuth,
  }) async {
    await Firebase.initializeApp();
    return AuthRepository(
      firebaseAuth: firebaseAuth ?? FirebaseAuth.instance,
    );
  }
}
