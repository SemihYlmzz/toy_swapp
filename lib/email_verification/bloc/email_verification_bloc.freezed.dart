// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendVerificationEmail,
    required TResult Function() signOut,
    required TResult Function() reloadAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? signOut,
    TResult? Function()? reloadAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendVerificationEmail,
    TResult Function()? signOut,
    TResult Function()? reloadAuthState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationSendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(EmailVerificationSignOut value) signOut,
    required TResult Function(EmailVerificationReloadAuthState value)
        reloadAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationSendVerificationEmail value)?
        sendVerificationEmail,
    TResult? Function(EmailVerificationSignOut value)? signOut,
    TResult? Function(EmailVerificationReloadAuthState value)? reloadAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationSendVerificationEmail value)?
        sendVerificationEmail,
    TResult Function(EmailVerificationSignOut value)? signOut,
    TResult Function(EmailVerificationReloadAuthState value)? reloadAuthState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationEventCopyWith<$Res> {
  factory $EmailVerificationEventCopyWith(EmailVerificationEvent value,
          $Res Function(EmailVerificationEvent) then) =
      _$EmailVerificationEventCopyWithImpl<$Res, EmailVerificationEvent>;
}

/// @nodoc
class _$EmailVerificationEventCopyWithImpl<$Res,
        $Val extends EmailVerificationEvent>
    implements $EmailVerificationEventCopyWith<$Res> {
  _$EmailVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailVerificationSendVerificationEmailImplCopyWith<$Res> {
  factory _$$EmailVerificationSendVerificationEmailImplCopyWith(
          _$EmailVerificationSendVerificationEmailImpl value,
          $Res Function(_$EmailVerificationSendVerificationEmailImpl) then) =
      __$$EmailVerificationSendVerificationEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerificationSendVerificationEmailImplCopyWithImpl<$Res>
    extends _$EmailVerificationEventCopyWithImpl<$Res,
        _$EmailVerificationSendVerificationEmailImpl>
    implements _$$EmailVerificationSendVerificationEmailImplCopyWith<$Res> {
  __$$EmailVerificationSendVerificationEmailImplCopyWithImpl(
      _$EmailVerificationSendVerificationEmailImpl _value,
      $Res Function(_$EmailVerificationSendVerificationEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerificationSendVerificationEmailImpl
    implements EmailVerificationSendVerificationEmail {
  const _$EmailVerificationSendVerificationEmailImpl();

  @override
  String toString() {
    return 'EmailVerificationEvent.sendVerificationEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationSendVerificationEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendVerificationEmail,
    required TResult Function() signOut,
    required TResult Function() reloadAuthState,
  }) {
    return sendVerificationEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? signOut,
    TResult? Function()? reloadAuthState,
  }) {
    return sendVerificationEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendVerificationEmail,
    TResult Function()? signOut,
    TResult Function()? reloadAuthState,
    required TResult orElse(),
  }) {
    if (sendVerificationEmail != null) {
      return sendVerificationEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationSendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(EmailVerificationSignOut value) signOut,
    required TResult Function(EmailVerificationReloadAuthState value)
        reloadAuthState,
  }) {
    return sendVerificationEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationSendVerificationEmail value)?
        sendVerificationEmail,
    TResult? Function(EmailVerificationSignOut value)? signOut,
    TResult? Function(EmailVerificationReloadAuthState value)? reloadAuthState,
  }) {
    return sendVerificationEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationSendVerificationEmail value)?
        sendVerificationEmail,
    TResult Function(EmailVerificationSignOut value)? signOut,
    TResult Function(EmailVerificationReloadAuthState value)? reloadAuthState,
    required TResult orElse(),
  }) {
    if (sendVerificationEmail != null) {
      return sendVerificationEmail(this);
    }
    return orElse();
  }
}

abstract class EmailVerificationSendVerificationEmail
    implements EmailVerificationEvent {
  const factory EmailVerificationSendVerificationEmail() =
      _$EmailVerificationSendVerificationEmailImpl;
}

/// @nodoc
abstract class _$$EmailVerificationSignOutImplCopyWith<$Res> {
  factory _$$EmailVerificationSignOutImplCopyWith(
          _$EmailVerificationSignOutImpl value,
          $Res Function(_$EmailVerificationSignOutImpl) then) =
      __$$EmailVerificationSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerificationSignOutImplCopyWithImpl<$Res>
    extends _$EmailVerificationEventCopyWithImpl<$Res,
        _$EmailVerificationSignOutImpl>
    implements _$$EmailVerificationSignOutImplCopyWith<$Res> {
  __$$EmailVerificationSignOutImplCopyWithImpl(
      _$EmailVerificationSignOutImpl _value,
      $Res Function(_$EmailVerificationSignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerificationSignOutImpl implements EmailVerificationSignOut {
  const _$EmailVerificationSignOutImpl();

  @override
  String toString() {
    return 'EmailVerificationEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendVerificationEmail,
    required TResult Function() signOut,
    required TResult Function() reloadAuthState,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? signOut,
    TResult? Function()? reloadAuthState,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendVerificationEmail,
    TResult Function()? signOut,
    TResult Function()? reloadAuthState,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationSendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(EmailVerificationSignOut value) signOut,
    required TResult Function(EmailVerificationReloadAuthState value)
        reloadAuthState,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationSendVerificationEmail value)?
        sendVerificationEmail,
    TResult? Function(EmailVerificationSignOut value)? signOut,
    TResult? Function(EmailVerificationReloadAuthState value)? reloadAuthState,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationSendVerificationEmail value)?
        sendVerificationEmail,
    TResult Function(EmailVerificationSignOut value)? signOut,
    TResult Function(EmailVerificationReloadAuthState value)? reloadAuthState,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class EmailVerificationSignOut implements EmailVerificationEvent {
  const factory EmailVerificationSignOut() = _$EmailVerificationSignOutImpl;
}

/// @nodoc
abstract class _$$EmailVerificationReloadAuthStateImplCopyWith<$Res> {
  factory _$$EmailVerificationReloadAuthStateImplCopyWith(
          _$EmailVerificationReloadAuthStateImpl value,
          $Res Function(_$EmailVerificationReloadAuthStateImpl) then) =
      __$$EmailVerificationReloadAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerificationReloadAuthStateImplCopyWithImpl<$Res>
    extends _$EmailVerificationEventCopyWithImpl<$Res,
        _$EmailVerificationReloadAuthStateImpl>
    implements _$$EmailVerificationReloadAuthStateImplCopyWith<$Res> {
  __$$EmailVerificationReloadAuthStateImplCopyWithImpl(
      _$EmailVerificationReloadAuthStateImpl _value,
      $Res Function(_$EmailVerificationReloadAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerificationReloadAuthStateImpl
    implements EmailVerificationReloadAuthState {
  const _$EmailVerificationReloadAuthStateImpl();

  @override
  String toString() {
    return 'EmailVerificationEvent.reloadAuthState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationReloadAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendVerificationEmail,
    required TResult Function() signOut,
    required TResult Function() reloadAuthState,
  }) {
    return reloadAuthState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? signOut,
    TResult? Function()? reloadAuthState,
  }) {
    return reloadAuthState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendVerificationEmail,
    TResult Function()? signOut,
    TResult Function()? reloadAuthState,
    required TResult orElse(),
  }) {
    if (reloadAuthState != null) {
      return reloadAuthState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailVerificationSendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(EmailVerificationSignOut value) signOut,
    required TResult Function(EmailVerificationReloadAuthState value)
        reloadAuthState,
  }) {
    return reloadAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailVerificationSendVerificationEmail value)?
        sendVerificationEmail,
    TResult? Function(EmailVerificationSignOut value)? signOut,
    TResult? Function(EmailVerificationReloadAuthState value)? reloadAuthState,
  }) {
    return reloadAuthState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailVerificationSendVerificationEmail value)?
        sendVerificationEmail,
    TResult Function(EmailVerificationSignOut value)? signOut,
    TResult Function(EmailVerificationReloadAuthState value)? reloadAuthState,
    required TResult orElse(),
  }) {
    if (reloadAuthState != null) {
      return reloadAuthState(this);
    }
    return orElse();
  }
}

abstract class EmailVerificationReloadAuthState
    implements EmailVerificationEvent {
  const factory EmailVerificationReloadAuthState() =
      _$EmailVerificationReloadAuthStateImpl;
}

/// @nodoc
mixin _$EmailVerificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  DateTime? get emailSendedDate => throw _privateConstructorUsedError;
  DateTime? get verificationLastCheckedDate =>
      throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailVerificationStateCopyWith<EmailVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationStateCopyWith(EmailVerificationState value,
          $Res Function(EmailVerificationState) then) =
      _$EmailVerificationStateCopyWithImpl<$Res, EmailVerificationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isEmailVerified,
      DateTime? emailSendedDate,
      DateTime? verificationLastCheckedDate,
      Failure? failure});
}

/// @nodoc
class _$EmailVerificationStateCopyWithImpl<$Res,
        $Val extends EmailVerificationState>
    implements $EmailVerificationStateCopyWith<$Res> {
  _$EmailVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isEmailVerified = null,
    Object? emailSendedDate = freezed,
    Object? verificationLastCheckedDate = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      emailSendedDate: freezed == emailSendedDate
          ? _value.emailSendedDate
          : emailSendedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verificationLastCheckedDate: freezed == verificationLastCheckedDate
          ? _value.verificationLastCheckedDate
          : verificationLastCheckedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailVerificationStateImplCopyWith<$Res>
    implements $EmailVerificationStateCopyWith<$Res> {
  factory _$$EmailVerificationStateImplCopyWith(
          _$EmailVerificationStateImpl value,
          $Res Function(_$EmailVerificationStateImpl) then) =
      __$$EmailVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isEmailVerified,
      DateTime? emailSendedDate,
      DateTime? verificationLastCheckedDate,
      Failure? failure});
}

/// @nodoc
class __$$EmailVerificationStateImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res,
        _$EmailVerificationStateImpl>
    implements _$$EmailVerificationStateImplCopyWith<$Res> {
  __$$EmailVerificationStateImplCopyWithImpl(
      _$EmailVerificationStateImpl _value,
      $Res Function(_$EmailVerificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isEmailVerified = null,
    Object? emailSendedDate = freezed,
    Object? verificationLastCheckedDate = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$EmailVerificationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      emailSendedDate: freezed == emailSendedDate
          ? _value.emailSendedDate
          : emailSendedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verificationLastCheckedDate: freezed == verificationLastCheckedDate
          ? _value.verificationLastCheckedDate
          : verificationLastCheckedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$EmailVerificationStateImpl implements _EmailVerificationState {
  const _$EmailVerificationStateImpl(
      {this.isLoading = false,
      this.isEmailVerified = false,
      this.emailSendedDate,
      this.verificationLastCheckedDate,
      this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isEmailVerified;
  @override
  final DateTime? emailSendedDate;
  @override
  final DateTime? verificationLastCheckedDate;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'EmailVerificationState(isLoading: $isLoading, isEmailVerified: $isEmailVerified, emailSendedDate: $emailSendedDate, verificationLastCheckedDate: $verificationLastCheckedDate, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.emailSendedDate, emailSendedDate) ||
                other.emailSendedDate == emailSendedDate) &&
            (identical(other.verificationLastCheckedDate,
                    verificationLastCheckedDate) ||
                other.verificationLastCheckedDate ==
                    verificationLastCheckedDate) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isEmailVerified,
      emailSendedDate, verificationLastCheckedDate, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerificationStateImplCopyWith<_$EmailVerificationStateImpl>
      get copyWith => __$$EmailVerificationStateImplCopyWithImpl<
          _$EmailVerificationStateImpl>(this, _$identity);
}

abstract class _EmailVerificationState implements EmailVerificationState {
  const factory _EmailVerificationState(
      {final bool isLoading,
      final bool isEmailVerified,
      final DateTime? emailSendedDate,
      final DateTime? verificationLastCheckedDate,
      final Failure? failure}) = _$EmailVerificationStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isEmailVerified;
  @override
  DateTime? get emailSendedDate;
  @override
  DateTime? get verificationLastCheckedDate;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$EmailVerificationStateImplCopyWith<_$EmailVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
