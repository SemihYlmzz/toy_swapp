// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordEvent {
  Email get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email email) sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Email email)? sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email email)? sendPasswordResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordSendPasswordResetEmail value)
        sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordSendPasswordResetEmail value)?
        sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordSendPasswordResetEmail value)?
        sendPasswordResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordEventCopyWith<ForgotPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
  @useResult
  $Res call({Email email});
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordSendPasswordResetEmailImplCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$$ForgotPasswordSendPasswordResetEmailImplCopyWith(
          _$ForgotPasswordSendPasswordResetEmailImpl value,
          $Res Function(_$ForgotPasswordSendPasswordResetEmailImpl) then) =
      __$$ForgotPasswordSendPasswordResetEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email});
}

/// @nodoc
class __$$ForgotPasswordSendPasswordResetEmailImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordSendPasswordResetEmailImpl>
    implements _$$ForgotPasswordSendPasswordResetEmailImplCopyWith<$Res> {
  __$$ForgotPasswordSendPasswordResetEmailImplCopyWithImpl(
      _$ForgotPasswordSendPasswordResetEmailImpl _value,
      $Res Function(_$ForgotPasswordSendPasswordResetEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordSendPasswordResetEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordSendPasswordResetEmailImpl
    implements ForgotPasswordSendPasswordResetEmail {
  const _$ForgotPasswordSendPasswordResetEmailImpl({required this.email});

  @override
  final Email email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.sendPasswordResetEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSendPasswordResetEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordSendPasswordResetEmailImplCopyWith<
          _$ForgotPasswordSendPasswordResetEmailImpl>
      get copyWith => __$$ForgotPasswordSendPasswordResetEmailImplCopyWithImpl<
          _$ForgotPasswordSendPasswordResetEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email email) sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Email email)? sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email email)? sendPasswordResetEmail,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmail != null) {
      return sendPasswordResetEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordSendPasswordResetEmail value)
        sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordSendPasswordResetEmail value)?
        sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordSendPasswordResetEmail value)?
        sendPasswordResetEmail,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmail != null) {
      return sendPasswordResetEmail(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSendPasswordResetEmail
    implements ForgotPasswordEvent {
  const factory ForgotPasswordSendPasswordResetEmail(
          {required final Email email}) =
      _$ForgotPasswordSendPasswordResetEmailImpl;

  @override
  Email get email;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordSendPasswordResetEmailImplCopyWith<
          _$ForgotPasswordSendPasswordResetEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isResetPasswordSend => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call({bool isLoading, bool isResetPasswordSend, Failure? failure});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isResetPasswordSend = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResetPasswordSend: null == isResetPasswordSend
          ? _value.isResetPasswordSend
          : isResetPasswordSend // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(_$ForgotPasswordStateImpl value,
          $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isResetPasswordSend, Failure? failure});
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(_$ForgotPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isResetPasswordSend = null,
    Object? failure = freezed,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResetPasswordSend: null == isResetPasswordSend
          ? _value.isResetPasswordSend
          : isResetPasswordSend // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  const _$ForgotPasswordStateImpl(
      {this.isLoading = false, this.isResetPasswordSend = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isResetPasswordSend;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ForgotPasswordState(isLoading: $isLoading, isResetPasswordSend: $isResetPasswordSend, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isResetPasswordSend, isResetPasswordSend) ||
                other.isResetPasswordSend == isResetPasswordSend) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isResetPasswordSend, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {final bool isLoading,
      final bool isResetPasswordSend,
      final Failure? failure}) = _$ForgotPasswordStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isResetPasswordSend;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
