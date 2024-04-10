// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountRegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)
        registerAccount,
    required TResult Function(Auth updatedAuthState) authStateUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)?
        registerAccount,
    TResult? Function(Auth updatedAuthState)? authStateUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)?
        registerAccount,
    TResult Function(Auth updatedAuthState)? authStateUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegistrationRegisterAccount value)
        registerAccount,
    required TResult Function(AccountRegistrationAuthStateUpdated value)
        authStateUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegistrationRegisterAccount value)?
        registerAccount,
    TResult? Function(AccountRegistrationAuthStateUpdated value)?
        authStateUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegistrationRegisterAccount value)? registerAccount,
    TResult Function(AccountRegistrationAuthStateUpdated value)?
        authStateUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegistrationEventCopyWith<$Res> {
  factory $AccountRegistrationEventCopyWith(AccountRegistrationEvent value,
          $Res Function(AccountRegistrationEvent) then) =
      _$AccountRegistrationEventCopyWithImpl<$Res, AccountRegistrationEvent>;
}

/// @nodoc
class _$AccountRegistrationEventCopyWithImpl<$Res,
        $Val extends AccountRegistrationEvent>
    implements $AccountRegistrationEventCopyWith<$Res> {
  _$AccountRegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountRegistrationRegisterAccountImplCopyWith<$Res> {
  factory _$$AccountRegistrationRegisterAccountImplCopyWith(
          _$AccountRegistrationRegisterAccountImpl value,
          $Res Function(_$AccountRegistrationRegisterAccountImpl) then) =
      __$$AccountRegistrationRegisterAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Uint8List avatarImage1024,
      Uint8List avatarImage128,
      Uint8List avatarImage256,
      Uint8List avatarImage512,
      String firstName,
      String lastName,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$AccountRegistrationRegisterAccountImplCopyWithImpl<$Res>
    extends _$AccountRegistrationEventCopyWithImpl<$Res,
        _$AccountRegistrationRegisterAccountImpl>
    implements _$$AccountRegistrationRegisterAccountImplCopyWith<$Res> {
  __$$AccountRegistrationRegisterAccountImplCopyWithImpl(
      _$AccountRegistrationRegisterAccountImpl _value,
      $Res Function(_$AccountRegistrationRegisterAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarImage1024 = null,
    Object? avatarImage128 = null,
    Object? avatarImage256 = null,
    Object? avatarImage512 = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$AccountRegistrationRegisterAccountImpl(
      avatarImage1024: null == avatarImage1024
          ? _value.avatarImage1024
          : avatarImage1024 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      avatarImage128: null == avatarImage128
          ? _value.avatarImage128
          : avatarImage128 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      avatarImage256: null == avatarImage256
          ? _value.avatarImage256
          : avatarImage256 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      avatarImage512: null == avatarImage512
          ? _value.avatarImage512
          : avatarImage512 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AccountRegistrationRegisterAccountImpl
    implements AccountRegistrationRegisterAccount {
  const _$AccountRegistrationRegisterAccountImpl(
      {required this.avatarImage1024,
      required this.avatarImage128,
      required this.avatarImage256,
      required this.avatarImage512,
      required this.firstName,
      required this.lastName,
      required this.latitude,
      required this.longitude});

  @override
  final Uint8List avatarImage1024;
  @override
  final Uint8List avatarImage128;
  @override
  final Uint8List avatarImage256;
  @override
  final Uint8List avatarImage512;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'AccountRegistrationEvent.registerAccount(avatarImage1024: $avatarImage1024, avatarImage128: $avatarImage128, avatarImage256: $avatarImage256, avatarImage512: $avatarImage512, firstName: $firstName, lastName: $lastName, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegistrationRegisterAccountImpl &&
            const DeepCollectionEquality()
                .equals(other.avatarImage1024, avatarImage1024) &&
            const DeepCollectionEquality()
                .equals(other.avatarImage128, avatarImage128) &&
            const DeepCollectionEquality()
                .equals(other.avatarImage256, avatarImage256) &&
            const DeepCollectionEquality()
                .equals(other.avatarImage512, avatarImage512) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatarImage1024),
      const DeepCollectionEquality().hash(avatarImage128),
      const DeepCollectionEquality().hash(avatarImage256),
      const DeepCollectionEquality().hash(avatarImage512),
      firstName,
      lastName,
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegistrationRegisterAccountImplCopyWith<
          _$AccountRegistrationRegisterAccountImpl>
      get copyWith => __$$AccountRegistrationRegisterAccountImplCopyWithImpl<
          _$AccountRegistrationRegisterAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)
        registerAccount,
    required TResult Function(Auth updatedAuthState) authStateUpdated,
  }) {
    return registerAccount(avatarImage1024, avatarImage128, avatarImage256,
        avatarImage512, firstName, lastName, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)?
        registerAccount,
    TResult? Function(Auth updatedAuthState)? authStateUpdated,
  }) {
    return registerAccount?.call(
        avatarImage1024,
        avatarImage128,
        avatarImage256,
        avatarImage512,
        firstName,
        lastName,
        latitude,
        longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)?
        registerAccount,
    TResult Function(Auth updatedAuthState)? authStateUpdated,
    required TResult orElse(),
  }) {
    if (registerAccount != null) {
      return registerAccount(avatarImage1024, avatarImage128, avatarImage256,
          avatarImage512, firstName, lastName, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegistrationRegisterAccount value)
        registerAccount,
    required TResult Function(AccountRegistrationAuthStateUpdated value)
        authStateUpdated,
  }) {
    return registerAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegistrationRegisterAccount value)?
        registerAccount,
    TResult? Function(AccountRegistrationAuthStateUpdated value)?
        authStateUpdated,
  }) {
    return registerAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegistrationRegisterAccount value)? registerAccount,
    TResult Function(AccountRegistrationAuthStateUpdated value)?
        authStateUpdated,
    required TResult orElse(),
  }) {
    if (registerAccount != null) {
      return registerAccount(this);
    }
    return orElse();
  }
}

abstract class AccountRegistrationRegisterAccount
    implements AccountRegistrationEvent {
  const factory AccountRegistrationRegisterAccount(
          {required final Uint8List avatarImage1024,
          required final Uint8List avatarImage128,
          required final Uint8List avatarImage256,
          required final Uint8List avatarImage512,
          required final String firstName,
          required final String lastName,
          required final double latitude,
          required final double longitude}) =
      _$AccountRegistrationRegisterAccountImpl;

  Uint8List get avatarImage1024;
  Uint8List get avatarImage128;
  Uint8List get avatarImage256;
  Uint8List get avatarImage512;
  String get firstName;
  String get lastName;
  double get latitude;
  double get longitude;
  @JsonKey(ignore: true)
  _$$AccountRegistrationRegisterAccountImplCopyWith<
          _$AccountRegistrationRegisterAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountRegistrationAuthStateUpdatedImplCopyWith<$Res> {
  factory _$$AccountRegistrationAuthStateUpdatedImplCopyWith(
          _$AccountRegistrationAuthStateUpdatedImpl value,
          $Res Function(_$AccountRegistrationAuthStateUpdatedImpl) then) =
      __$$AccountRegistrationAuthStateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Auth updatedAuthState});

  $AuthCopyWith<$Res> get updatedAuthState;
}

/// @nodoc
class __$$AccountRegistrationAuthStateUpdatedImplCopyWithImpl<$Res>
    extends _$AccountRegistrationEventCopyWithImpl<$Res,
        _$AccountRegistrationAuthStateUpdatedImpl>
    implements _$$AccountRegistrationAuthStateUpdatedImplCopyWith<$Res> {
  __$$AccountRegistrationAuthStateUpdatedImplCopyWithImpl(
      _$AccountRegistrationAuthStateUpdatedImpl _value,
      $Res Function(_$AccountRegistrationAuthStateUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAuthState = null,
  }) {
    return _then(_$AccountRegistrationAuthStateUpdatedImpl(
      null == updatedAuthState
          ? _value.updatedAuthState
          : updatedAuthState // ignore: cast_nullable_to_non_nullable
              as Auth,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res> get updatedAuthState {
    return $AuthCopyWith<$Res>(_value.updatedAuthState, (value) {
      return _then(_value.copyWith(updatedAuthState: value));
    });
  }
}

/// @nodoc

class _$AccountRegistrationAuthStateUpdatedImpl
    implements AccountRegistrationAuthStateUpdated {
  const _$AccountRegistrationAuthStateUpdatedImpl(this.updatedAuthState);

  @override
  final Auth updatedAuthState;

  @override
  String toString() {
    return 'AccountRegistrationEvent.authStateUpdated(updatedAuthState: $updatedAuthState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegistrationAuthStateUpdatedImpl &&
            (identical(other.updatedAuthState, updatedAuthState) ||
                other.updatedAuthState == updatedAuthState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedAuthState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegistrationAuthStateUpdatedImplCopyWith<
          _$AccountRegistrationAuthStateUpdatedImpl>
      get copyWith => __$$AccountRegistrationAuthStateUpdatedImplCopyWithImpl<
          _$AccountRegistrationAuthStateUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)
        registerAccount,
    required TResult Function(Auth updatedAuthState) authStateUpdated,
  }) {
    return authStateUpdated(updatedAuthState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)?
        registerAccount,
    TResult? Function(Auth updatedAuthState)? authStateUpdated,
  }) {
    return authStateUpdated?.call(updatedAuthState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List avatarImage1024,
            Uint8List avatarImage128,
            Uint8List avatarImage256,
            Uint8List avatarImage512,
            String firstName,
            String lastName,
            double latitude,
            double longitude)?
        registerAccount,
    TResult Function(Auth updatedAuthState)? authStateUpdated,
    required TResult orElse(),
  }) {
    if (authStateUpdated != null) {
      return authStateUpdated(updatedAuthState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountRegistrationRegisterAccount value)
        registerAccount,
    required TResult Function(AccountRegistrationAuthStateUpdated value)
        authStateUpdated,
  }) {
    return authStateUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegistrationRegisterAccount value)?
        registerAccount,
    TResult? Function(AccountRegistrationAuthStateUpdated value)?
        authStateUpdated,
  }) {
    return authStateUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegistrationRegisterAccount value)? registerAccount,
    TResult Function(AccountRegistrationAuthStateUpdated value)?
        authStateUpdated,
    required TResult orElse(),
  }) {
    if (authStateUpdated != null) {
      return authStateUpdated(this);
    }
    return orElse();
  }
}

abstract class AccountRegistrationAuthStateUpdated
    implements AccountRegistrationEvent {
  const factory AccountRegistrationAuthStateUpdated(
      final Auth updatedAuthState) = _$AccountRegistrationAuthStateUpdatedImpl;

  Auth get updatedAuthState;
  @JsonKey(ignore: true)
  _$$AccountRegistrationAuthStateUpdatedImplCopyWith<
          _$AccountRegistrationAuthStateUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountRegistrationState {
  Auth get authState => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountRegistrationStateCopyWith<AccountRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegistrationStateCopyWith<$Res> {
  factory $AccountRegistrationStateCopyWith(AccountRegistrationState value,
          $Res Function(AccountRegistrationState) then) =
      _$AccountRegistrationStateCopyWithImpl<$Res, AccountRegistrationState>;
  @useResult
  $Res call({Auth authState, bool isLoading, Failure? failure});

  $AuthCopyWith<$Res> get authState;
}

/// @nodoc
class _$AccountRegistrationStateCopyWithImpl<$Res,
        $Val extends AccountRegistrationState>
    implements $AccountRegistrationStateCopyWith<$Res> {
  _$AccountRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as Auth,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res> get authState {
    return $AuthCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountRegistrationStateImplCopyWith<$Res>
    implements $AccountRegistrationStateCopyWith<$Res> {
  factory _$$AccountRegistrationStateImplCopyWith(
          _$AccountRegistrationStateImpl value,
          $Res Function(_$AccountRegistrationStateImpl) then) =
      __$$AccountRegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Auth authState, bool isLoading, Failure? failure});

  @override
  $AuthCopyWith<$Res> get authState;
}

/// @nodoc
class __$$AccountRegistrationStateImplCopyWithImpl<$Res>
    extends _$AccountRegistrationStateCopyWithImpl<$Res,
        _$AccountRegistrationStateImpl>
    implements _$$AccountRegistrationStateImplCopyWith<$Res> {
  __$$AccountRegistrationStateImplCopyWithImpl(
      _$AccountRegistrationStateImpl _value,
      $Res Function(_$AccountRegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$AccountRegistrationStateImpl(
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as Auth,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$AccountRegistrationStateImpl implements _AccountRegistrationState {
  const _$AccountRegistrationStateImpl(
      {required this.authState, this.isLoading = false, this.failure});

  @override
  final Auth authState;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AccountRegistrationState(authState: $authState, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegistrationStateImpl &&
            (identical(other.authState, authState) ||
                other.authState == authState) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegistrationStateImplCopyWith<_$AccountRegistrationStateImpl>
      get copyWith => __$$AccountRegistrationStateImplCopyWithImpl<
          _$AccountRegistrationStateImpl>(this, _$identity);
}

abstract class _AccountRegistrationState implements AccountRegistrationState {
  const factory _AccountRegistrationState(
      {required final Auth authState,
      final bool isLoading,
      final Failure? failure}) = _$AccountRegistrationStateImpl;

  @override
  Auth get authState;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AccountRegistrationStateImplCopyWith<_$AccountRegistrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
