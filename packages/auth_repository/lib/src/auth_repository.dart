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
  FutureUnit signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    if (email.isNotValid || password.isNotValid) {
      return Left(AuthRepositoryInvalidInput());
    }
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      return const Right(unit);
    } catch (exception) {
      return Left(AuthRepositoryUnknown());
    }
  }

  FutureUnit signOut() async {
    try {
      await _firebaseAuth.signOut();
      return const Right(unit);
    } catch (exception) {
      return Left(AuthRepositoryUnknown());
    }
  }

  FutureUnit createUserWithEmailAndPassword({
    required Email email,
    required Password password,
    required ConfirmedPassword confirmedPassword,
  }) async {
    if (email.isNotValid ||
        password.isNotValid ||
        confirmedPassword.isNotValid) {
      return Left(AuthRepositoryInvalidInput());
    }
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      return const Right(unit);
    } catch (exception) {
      return Left(AuthRepositoryUnknown());
    }
  }

  FutureUnit sendVerificationEmail() async {
    try {
      await _firebaseAuth.currentUser?.sendEmailVerification();
      return const Right(unit);
    } catch (exception) {
      return Left(AuthRepositoryUnknown());
    }
  }

  FutureUnit sendPasswordResetEmail({
    required Email email,
  }) async {
    if (email.isNotValid) {
      return Left(AuthRepositoryInvalidInput());
    }
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email.value);
      return const Right(unit);
    } catch (exception) {
      return Left(AuthRepositoryUnknown());
    }
  }

  FutureUnit reload() async {
    try {
      await _firebaseAuth.currentUser?.reload();
      return const Right(unit);
    } catch (exception) {
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
