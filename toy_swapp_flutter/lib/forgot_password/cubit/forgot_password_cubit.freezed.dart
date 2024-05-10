// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordCubitState {
  Email get email => throw _privateConstructorUsedError;
  bool get displayErrors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordCubitStateCopyWith<ForgotPasswordCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordCubitStateCopyWith<$Res> {
  factory $ForgotPasswordCubitStateCopyWith(ForgotPasswordCubitState value,
          $Res Function(ForgotPasswordCubitState) then) =
      _$ForgotPasswordCubitStateCopyWithImpl<$Res, ForgotPasswordCubitState>;
  @useResult
  $Res call({Email email, bool displayErrors});
}

/// @nodoc
class _$ForgotPasswordCubitStateCopyWithImpl<$Res,
        $Val extends ForgotPasswordCubitState>
    implements $ForgotPasswordCubitStateCopyWith<$Res> {
  _$ForgotPasswordCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayErrors = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      displayErrors: null == displayErrors
          ? _value.displayErrors
          : displayErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordCubitStateImplCopyWith<$Res>
    implements $ForgotPasswordCubitStateCopyWith<$Res> {
  factory _$$ForgotPasswordCubitStateImplCopyWith(
          _$ForgotPasswordCubitStateImpl value,
          $Res Function(_$ForgotPasswordCubitStateImpl) then) =
      __$$ForgotPasswordCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, bool displayErrors});
}

/// @nodoc
class __$$ForgotPasswordCubitStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordCubitStateCopyWithImpl<$Res,
        _$ForgotPasswordCubitStateImpl>
    implements _$$ForgotPasswordCubitStateImplCopyWith<$Res> {
  __$$ForgotPasswordCubitStateImplCopyWithImpl(
      _$ForgotPasswordCubitStateImpl _value,
      $Res Function(_$ForgotPasswordCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayErrors = null,
  }) {
    return _then(_$ForgotPasswordCubitStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      displayErrors: null == displayErrors
          ? _value.displayErrors
          : displayErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordCubitStateImpl implements _ForgotPasswordCubitState {
  const _$ForgotPasswordCubitStateImpl(
      {this.email = const Email.pure(), this.displayErrors = false});

  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final bool displayErrors;

  @override
  String toString() {
    return 'ForgotPasswordCubitState(email: $email, displayErrors: $displayErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordCubitStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayErrors, displayErrors) ||
                other.displayErrors == displayErrors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, displayErrors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordCubitStateImplCopyWith<_$ForgotPasswordCubitStateImpl>
      get copyWith => __$$ForgotPasswordCubitStateImplCopyWithImpl<
          _$ForgotPasswordCubitStateImpl>(this, _$identity);
}

abstract class _ForgotPasswordCubitState implements ForgotPasswordCubitState {
  const factory _ForgotPasswordCubitState(
      {final Email email,
      final bool displayErrors}) = _$ForgotPasswordCubitStateImpl;

  @override
  Email get email;
  @override
  bool get displayErrors;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordCubitStateImplCopyWith<_$ForgotPasswordCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
