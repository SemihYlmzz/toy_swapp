import 'package:auth_repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthRepositoryInitializer {
  static Future<AuthRepository> initialize({
    required FirebaseOptions firebaseOptions,
    FirebaseAuth? firebaseAuth,
  }) async {
    try {
      await Firebase.initializeApp(options: firebaseOptions);
      
      return AuthRepository(
        firebaseAuth: firebaseAuth ?? FirebaseAuth.instance,
      );
    } catch (exception) {
      rethrow;
    }
  }
}
