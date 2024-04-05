// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String password) changePassword,
    required TResult Function(String email) changeEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email)? changeEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String password)? changePassword,
    TResult Function(String email)? changeEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInChangePassword value) changePassword,
    required TResult Function(SignInChangeEmail value) changeEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInChangePassword value)? changePassword,
    TResult? Function(SignInChangeEmail value)? changeEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInChangePassword value)? changePassword,
    TResult Function(SignInChangeEmail value)? changeEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignInEventCopyWith<$Res> {
  factory $AuthSignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$AuthSignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$AuthSignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $AuthSignInEventCopyWith<$Res> {
  _$AuthSignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthSignInWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$AuthSignInWithEmailAndPasswordImplCopyWith(
          _$AuthSignInWithEmailAndPasswordImpl value,
          $Res Function(_$AuthSignInWithEmailAndPasswordImpl) then) =
      __$$AuthSignInWithEmailAndPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignInWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthSignInEventCopyWithImpl<$Res,
        _$AuthSignInWithEmailAndPasswordImpl>
    implements _$$AuthSignInWithEmailAndPasswordImplCopyWith<$Res> {
  __$$AuthSignInWithEmailAndPasswordImplCopyWithImpl(
      _$AuthSignInWithEmailAndPasswordImpl _value,
      $Res Function(_$AuthSignInWithEmailAndPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignInWithEmailAndPasswordImpl
    implements SignInWithEmailAndPassword {
  const _$AuthSignInWithEmailAndPasswordImpl();

  @override
  String toString() {
    return 'AuthSignInEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInWithEmailAndPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String password) changePassword,
    required TResult Function(String email) changeEmail,
  }) {
    return signInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email)? changeEmail,
  }) {
    return signInWithEmailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String password)? changePassword,
    TResult Function(String email)? changeEmail,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInChangePassword value) changePassword,
    required TResult Function(SignInChangeEmail value) changeEmail,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInChangePassword value)? changePassword,
    TResult? Function(SignInChangeEmail value)? changeEmail,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInChangePassword value)? changePassword,
    TResult Function(SignInChangeEmail value)? changeEmail,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements SignInEvent {
  const factory SignInWithEmailAndPassword() =
      _$AuthSignInWithEmailAndPasswordImpl;
}

/// @nodoc
abstract class _$$AuthSignInWithGoogleImplCopyWith<$Res> {
  factory _$$AuthSignInWithGoogleImplCopyWith(_$AuthSignInWithGoogleImpl value,
          $Res Function(_$AuthSignInWithGoogleImpl) then) =
      __$$AuthSignInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignInWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthSignInEventCopyWithImpl<$Res, _$AuthSignInWithGoogleImpl>
    implements _$$AuthSignInWithGoogleImplCopyWith<$Res> {
  __$$AuthSignInWithGoogleImplCopyWithImpl(_$AuthSignInWithGoogleImpl _value,
      $Res Function(_$AuthSignInWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignInWithGoogleImpl implements SignInWithGoogle {
  const _$AuthSignInWithGoogleImpl();

  @override
  String toString() {
    return 'AuthSignInEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String password) changePassword,
    required TResult Function(String email) changeEmail,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email)? changeEmail,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String password)? changePassword,
    TResult Function(String email)? changeEmail,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInChangePassword value) changePassword,
    required TResult Function(SignInChangeEmail value) changeEmail,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInChangePassword value)? changePassword,
    TResult? Function(SignInChangeEmail value)? changeEmail,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInChangePassword value)? changePassword,
    TResult Function(SignInChangeEmail value)? changeEmail,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SignInEvent {
  const factory SignInWithGoogle() = _$AuthSignInWithGoogleImpl;
}

/// @nodoc
abstract class _$$AuthSignInChangePasswordImplCopyWith<$Res> {
  factory _$$AuthSignInChangePasswordImplCopyWith(
          _$AuthSignInChangePasswordImpl value,
          $Res Function(_$AuthSignInChangePasswordImpl) then) =
      __$$AuthSignInChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$AuthSignInChangePasswordImplCopyWithImpl<$Res>
    extends _$AuthSignInEventCopyWithImpl<$Res, _$AuthSignInChangePasswordImpl>
    implements _$$AuthSignInChangePasswordImplCopyWith<$Res> {
  __$$AuthSignInChangePasswordImplCopyWithImpl(
      _$AuthSignInChangePasswordImpl _value,
      $Res Function(_$AuthSignInChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$AuthSignInChangePasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInChangePasswordImpl implements SignInChangePassword {
  const _$AuthSignInChangePasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthSignInEvent.changePassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInChangePasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInChangePasswordImplCopyWith<_$AuthSignInChangePasswordImpl>
      get copyWith => __$$AuthSignInChangePasswordImplCopyWithImpl<
          _$AuthSignInChangePasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String password) changePassword,
    required TResult Function(String email) changeEmail,
  }) {
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email)? changeEmail,
  }) {
    return changePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String password)? changePassword,
    TResult Function(String email)? changeEmail,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInChangePassword value) changePassword,
    required TResult Function(SignInChangeEmail value) changeEmail,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInChangePassword value)? changePassword,
    TResult? Function(SignInChangeEmail value)? changeEmail,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInChangePassword value)? changePassword,
    TResult Function(SignInChangeEmail value)? changeEmail,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class SignInChangePassword implements SignInEvent {
  const factory SignInChangePassword({required final String password}) =
      _$AuthSignInChangePasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$AuthSignInChangePasswordImplCopyWith<_$AuthSignInChangePasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignInChangeEmailImplCopyWith<$Res> {
  factory _$$AuthSignInChangeEmailImplCopyWith(
          _$AuthSignInChangeEmailImpl value,
          $Res Function(_$AuthSignInChangeEmailImpl) then) =
      __$$AuthSignInChangeEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthSignInChangeEmailImplCopyWithImpl<$Res>
    extends _$AuthSignInEventCopyWithImpl<$Res, _$AuthSignInChangeEmailImpl>
    implements _$$AuthSignInChangeEmailImplCopyWith<$Res> {
  __$$AuthSignInChangeEmailImplCopyWithImpl(_$AuthSignInChangeEmailImpl _value,
      $Res Function(_$AuthSignInChangeEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthSignInChangeEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInChangeEmailImpl implements SignInChangeEmail {
  const _$AuthSignInChangeEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthSignInEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInChangeEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInChangeEmailImplCopyWith<_$AuthSignInChangeEmailImpl>
      get copyWith => __$$AuthSignInChangeEmailImplCopyWithImpl<
          _$AuthSignInChangeEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String password) changePassword,
    required TResult Function(String email) changeEmail,
  }) {
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithEmailAndPassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email)? changeEmail,
  }) {
    return changeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String password)? changePassword,
    TResult Function(String email)? changeEmail,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInChangePassword value) changePassword,
    required TResult Function(SignInChangeEmail value) changeEmail,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInChangePassword value)? changePassword,
    TResult? Function(SignInChangeEmail value)? changeEmail,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInChangePassword value)? changePassword,
    TResult Function(SignInChangeEmail value)? changeEmail,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class SignInChangeEmail implements SignInEvent {
  const factory SignInChangeEmail({required final String email}) =
      _$AuthSignInChangeEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$AuthSignInChangeEmailImplCopyWith<_$AuthSignInChangeEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  FocusNode get passwordFocusNode => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthSignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignInStateCopyWith<$Res> {
  factory $AuthSignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$AuthSignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {FocusNode passwordFocusNode,
      bool isLoading,
      String? errorMessage,
      String email,
      String password});
}

/// @nodoc
class _$AuthSignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $AuthSignInStateCopyWith<$Res> {
  _$AuthSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordFocusNode = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      passwordFocusNode: null == passwordFocusNode
          ? _value.passwordFocusNode
          : passwordFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthSignInStateImplCopyWith<$Res>
    implements $AuthSignInStateCopyWith<$Res> {
  factory _$$AuthSignInStateImplCopyWith(_$AuthSignInStateImpl value,
          $Res Function(_$AuthSignInStateImpl) then) =
      __$$AuthSignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FocusNode passwordFocusNode,
      bool isLoading,
      String? errorMessage,
      String email,
      String password});
}

/// @nodoc
class __$$AuthSignInStateImplCopyWithImpl<$Res>
    extends _$AuthSignInStateCopyWithImpl<$Res, _$AuthSignInStateImpl>
    implements _$$AuthSignInStateImplCopyWith<$Res> {
  __$$AuthSignInStateImplCopyWithImpl(
      _$AuthSignInStateImpl _value, $Res Function(_$AuthSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordFocusNode = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignInStateImpl(
      passwordFocusNode: null == passwordFocusNode
          ? _value.passwordFocusNode
          : passwordFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInStateImpl implements _SignInState {
  const _$AuthSignInStateImpl(
      {required this.passwordFocusNode,
      this.isLoading = false,
      this.errorMessage = null,
      this.email = '',
      this.password = ''});

  @override
  final FocusNode passwordFocusNode;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'AuthSignInState(passwordFocusNode: $passwordFocusNode, isLoading: $isLoading, errorMessage: $errorMessage, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInStateImpl &&
            (identical(other.passwordFocusNode, passwordFocusNode) ||
                other.passwordFocusNode == passwordFocusNode) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, passwordFocusNode, isLoading, errorMessage, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInStateImplCopyWith<_$AuthSignInStateImpl> get copyWith =>
      __$$AuthSignInStateImplCopyWithImpl<_$AuthSignInStateImpl>(
          this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final FocusNode passwordFocusNode,
      final bool isLoading,
      final String? errorMessage,
      final String email,
      final String password}) = _$AuthSignInStateImpl;

  @override
  FocusNode get passwordFocusNode;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthSignInStateImplCopyWith<_$AuthSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
