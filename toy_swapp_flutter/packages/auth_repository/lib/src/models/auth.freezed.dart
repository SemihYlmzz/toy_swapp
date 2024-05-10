// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return _Auth.fromJson(json);
}

/// @nodoc
mixin _$Auth {
  String get id => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  AuthSignInMethod get signInMethod => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  DateTime? get lastSignInTime => throw _privateConstructorUsedError;
  AuthState get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res, Auth>;
  @useResult
  $Res call(
      {String id,
      bool isEmailVerified,
      AuthSignInMethod signInMethod,
      String? email,
      String? displayName,
      String? photoURL,
      DateTime? lastSignInTime,
      AuthState state});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res, $Val extends Auth>
    implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isEmailVerified = null,
    Object? signInMethod = null,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? lastSignInTime = freezed,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      signInMethod: null == signInMethod
          ? _value.signInMethod
          : signInMethod // ignore: cast_nullable_to_non_nullable
              as AuthSignInMethod,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: freezed == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSignInTime: freezed == lastSignInTime
          ? _value.lastSignInTime
          : lastSignInTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthImplCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$$AuthImplCopyWith(
          _$AuthImpl value, $Res Function(_$AuthImpl) then) =
      __$$AuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool isEmailVerified,
      AuthSignInMethod signInMethod,
      String? email,
      String? displayName,
      String? photoURL,
      DateTime? lastSignInTime,
      AuthState state});
}

/// @nodoc
class __$$AuthImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$AuthImpl>
    implements _$$AuthImplCopyWith<$Res> {
  __$$AuthImplCopyWithImpl(_$AuthImpl _value, $Res Function(_$AuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isEmailVerified = null,
    Object? signInMethod = null,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? lastSignInTime = freezed,
    Object? state = null,
  }) {
    return _then(_$AuthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      signInMethod: null == signInMethod
          ? _value.signInMethod
          : signInMethod // ignore: cast_nullable_to_non_nullable
              as AuthSignInMethod,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: freezed == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSignInTime: freezed == lastSignInTime
          ? _value.lastSignInTime
          : lastSignInTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthImpl with DiagnosticableTreeMixin implements _Auth {
  const _$AuthImpl(
      {required this.id,
      required this.isEmailVerified,
      required this.signInMethod,
      required this.email,
      required this.displayName,
      required this.photoURL,
      required this.lastSignInTime,
      required this.state});

  factory _$AuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthImplFromJson(json);

  @override
  final String id;
  @override
  final bool isEmailVerified;
  @override
  final AuthSignInMethod signInMethod;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoURL;
  @override
  final DateTime? lastSignInTime;
  @override
  final AuthState state;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Auth(id: $id, isEmailVerified: $isEmailVerified, signInMethod: $signInMethod, email: $email, displayName: $displayName, photoURL: $photoURL, lastSignInTime: $lastSignInTime, state: $state)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Auth'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isEmailVerified', isEmailVerified))
      ..add(DiagnosticsProperty('signInMethod', signInMethod))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('photoURL', photoURL))
      ..add(DiagnosticsProperty('lastSignInTime', lastSignInTime))
      ..add(DiagnosticsProperty('state', state));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.signInMethod, signInMethod) ||
                other.signInMethod == signInMethod) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.lastSignInTime, lastSignInTime) ||
                other.lastSignInTime == lastSignInTime) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isEmailVerified,
      signInMethod, email, displayName, photoURL, lastSignInTime, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      __$$AuthImplCopyWithImpl<_$AuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthImplToJson(
      this,
    );
  }
}

abstract class _Auth implements Auth {
  const factory _Auth(
      {required final String id,
      required final bool isEmailVerified,
      required final AuthSignInMethod signInMethod,
      required final String? email,
      required final String? displayName,
      required final String? photoURL,
      required final DateTime? lastSignInTime,
      required final AuthState state}) = _$AuthImpl;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$AuthImpl.fromJson;

  @override
  String get id;
  @override
  bool get isEmailVerified;
  @override
  AuthSignInMethod get signInMethod;
  @override
  String? get email;
  @override
  String? get displayName;
  @override
  String? get photoURL;
  @override
  DateTime? get lastSignInTime;
  @override
  AuthState get state;
  @override
  @JsonKey(ignore: true)
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
