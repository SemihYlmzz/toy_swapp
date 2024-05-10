import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required String id,
    required bool isEmailVerified,
    required AuthSignInMethod signInMethod,
    required String? email,
    required String? displayName,
    required String? photoURL,
    required DateTime? lastSignInTime,
    required AuthState state,
  }) = _Auth;

  factory Auth.fromJson(Map<String, Object?> json) => _$AuthFromJson(
        json,
      );
  factory Auth.empty() => const Auth(
        id: '',
        isEmailVerified: false,
        signInMethod: AuthSignInMethod.unknown,
        email: null,
        displayName: null,
        photoURL: null,
        lastSignInTime: null,
        state: AuthState.unAuth,
      );
}

enum AuthSignInMethod {
  emailAndPassword,
  google,
  apple,
  facebook,
  unknown,
}
