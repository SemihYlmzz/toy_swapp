// import 'package:auth_repository/auth_repository.dart';
import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:toy_swapp/errors/errors.dart';

class AuthRepository {
  AuthRepository({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth {
    currentAuth = _authFromFirebaseUser(_firebaseAuth.currentUser);
    currentAuthStream.listen((event) {
      currentAuth = event;
    });
    _firebaseAuth.authStateChanges().listen((event) {
      _streamController.sink.add(_authFromFirebaseUser(event));
    });
  }

  // Instances
  final FirebaseAuth _firebaseAuth;

  // Data Manipulation
  final _streamController = StreamController<Auth>.broadcast();
  Stream<Auth> get currentAuthStream => _streamController.stream;
  Auth currentAuth = Auth.empty();

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
      _streamController.sink.add(
        _authFromFirebaseUser(_firebaseAuth.currentUser),
      );
      return const Right(unit);
    } catch (exception) {
      return Left(AuthRepositoryUnknown());
    }
  }

  FutureUnit sendEmailUpdateVerification({
    required Email emailObject,
  }) async {
    if (emailObject.isNotValid) {
      return Left(AuthRepositoryInvalidInput());
    }
    try {
      await _firebaseAuth.currentUser?.verifyBeforeUpdateEmail(
        emailObject.value,
      );

      _streamController.sink.add(
        _authFromFirebaseUser(_firebaseAuth.currentUser),
      );
      return const Right(unit);
    } catch (exception) {
      return Left(AuthRepositoryUnknown());
    }
  }

  FutureUnit updatePassword({
    required Password newPassword,
    required ConfirmedPassword confirmedPassword,
  }) async {
    if (newPassword.isNotValid) {
      return Left(AuthRepositoryInvalidInput());
    }
    if (confirmedPassword.isNotValid) {
      return Left(AuthRepositoryInvalidInput());
    }
    try {
      await _firebaseAuth.currentUser?.updatePassword(newPassword.value);
      _streamController.sink.add(
        _authFromFirebaseUser(_firebaseAuth.currentUser),
      );
      return const Right(unit);
    } catch (exception) {
      return Left(AuthRepositoryUnknown());
    }
  }

  FutureUnit reAuthenticateEmailAndPassword({
    required Password currentPassword,
  }) async {
    final currentAuthEmail = currentAuth.email;
    if (currentAuthEmail == null) {
      return Left(AuthRepositoryUnknown()); // TDO -Current Auth is Empty
    }
    if (currentPassword.isNotValid) {
      return Left(AuthRepositoryInvalidInput());
    }
    try {
      final credential = EmailAuthProvider.credential(
        email: currentAuthEmail,
        password: currentPassword.value,
      );
      await _firebaseAuth.currentUser?.reauthenticateWithCredential(credential);
      return const Right(unit);
    } catch (exception) {
      if (exception is FirebaseAuthException) {
        if (exception.code == 'invalid-credential') {
          return Left(AuthRepositoryReAuthenticateInvalidCredential());
        }
      }
      return Left(AuthRepositoryUnknown());
    }
  }

  // Firebase Specific Functions
  Auth _authFromFirebaseUser(User? user) {
    if (user == null) {
      return Auth.empty();
    }
    return Auth(
      id: user.uid,
      isEmailVerified: user.emailVerified,
      signInMethod: _authSignInMethodFromProviderId(
        user.providerData.first.providerId,
      ),
      email: user.email,
      displayName: user.displayName,
      photoURL: user.photoURL,
      lastSignInTime: user.metadata.lastSignInTime,
      state: AuthState.auth,
    );
  }

  AuthSignInMethod _authSignInMethodFromProviderId(String providerId) {
    return switch (providerId) {
      'password' => AuthSignInMethod.emailAndPassword,
      'google' => AuthSignInMethod.google,
      'apple' => AuthSignInMethod.emailAndPassword,
      'facebook' => AuthSignInMethod.facebook,
      _ => AuthSignInMethod.unknown,
    };
  }
}
