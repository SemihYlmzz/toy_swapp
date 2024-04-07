// import 'package:auth_repository/auth_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:toy_swapp/errors/errors.dart';

class AuthRepository {
  AuthRepository({
    FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  // Instances
  final FirebaseAuth _firebaseAuth;

  // Functions
  Future<Either<Failure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Right(unit);
    } catch (exception) {
      print(exception);
      return Left(AuthRepositoryUnknown());
    }
  }

  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return const Right(unit);
    } catch (exception) {
      print(exception);
      return Left(AuthRepositoryUnknown());
    }
  }

  Future<Either<Failure, Unit>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Right(unit);
    } catch (exception) {
      print(exception);
      return Left(AuthRepositoryUnknown());
    }
  }

  Stream<bool> isSignedInStream() {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      return firebaseUser != null;
    });
  }

  bool? isEmailVerified() => _firebaseAuth.currentUser?.emailVerified;
  bool isSignedIn() => _firebaseAuth.currentUser != null;

}
