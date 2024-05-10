// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      id: json['id'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      signInMethod:
          $enumDecode(_$AuthSignInMethodEnumMap, json['signInMethod']),
      email: json['email'] as String?,
      displayName: json['displayName'] as String?,
      photoURL: json['photoURL'] as String?,
      lastSignInTime: json['lastSignInTime'] == null
          ? null
          : DateTime.parse(json['lastSignInTime'] as String),
      state: $enumDecode(_$AuthStateEnumMap, json['state']),
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isEmailVerified': instance.isEmailVerified,
      'signInMethod': _$AuthSignInMethodEnumMap[instance.signInMethod]!,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'lastSignInTime': instance.lastSignInTime?.toIso8601String(),
      'state': _$AuthStateEnumMap[instance.state]!,
    };

const _$AuthSignInMethodEnumMap = {
  AuthSignInMethod.emailAndPassword: 'emailAndPassword',
  AuthSignInMethod.google: 'google',
  AuthSignInMethod.apple: 'apple',
  AuthSignInMethod.facebook: 'facebook',
  AuthSignInMethod.unknown: 'unknown',
};

const _$AuthStateEnumMap = {
  AuthState.auth: 'auth',
  AuthState.unAuth: 'unAuth',
};
