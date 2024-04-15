// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInCubitState {
  FocusNode get passwordFocusNode => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get displayErrors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInCubitStateCopyWith<SignInCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInCubitStateCopyWith<$Res> {
  factory $SignInCubitStateCopyWith(
          SignInCubitState value, $Res Function(SignInCubitState) then) =
      _$SignInCubitStateCopyWithImpl<$Res, SignInCubitState>;
  @useResult
  $Res call(
      {FocusNode passwordFocusNode,
      Email email,
      Password password,
      bool displayErrors});
}

/// @nodoc
class _$SignInCubitStateCopyWithImpl<$Res, $Val extends SignInCubitState>
    implements $SignInCubitStateCopyWith<$Res> {
  _$SignInCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordFocusNode = null,
    Object? email = null,
    Object? password = null,
    Object? displayErrors = null,
  }) {
    return _then(_value.copyWith(
      passwordFocusNode: null == passwordFocusNode
          ? _value.passwordFocusNode
          : passwordFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      displayErrors: null == displayErrors
          ? _value.displayErrors
          : displayErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInCubitStateImplCopyWith<$Res>
    implements $SignInCubitStateCopyWith<$Res> {
  factory _$$SignInCubitStateImplCopyWith(_$SignInCubitStateImpl value,
          $Res Function(_$SignInCubitStateImpl) then) =
      __$$SignInCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FocusNode passwordFocusNode,
      Email email,
      Password password,
      bool displayErrors});
}

/// @nodoc
class __$$SignInCubitStateImplCopyWithImpl<$Res>
    extends _$SignInCubitStateCopyWithImpl<$Res, _$SignInCubitStateImpl>
    implements _$$SignInCubitStateImplCopyWith<$Res> {
  __$$SignInCubitStateImplCopyWithImpl(_$SignInCubitStateImpl _value,
      $Res Function(_$SignInCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordFocusNode = null,
    Object? email = null,
    Object? password = null,
    Object? displayErrors = null,
  }) {
    return _then(_$SignInCubitStateImpl(
      passwordFocusNode: null == passwordFocusNode
          ? _value.passwordFocusNode
          : passwordFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      displayErrors: null == displayErrors
          ? _value.displayErrors
          : displayErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInCubitStateImpl implements _SignInCubitState {
  const _$SignInCubitStateImpl(
      {required this.passwordFocusNode,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.displayErrors = false});

  @override
  final FocusNode passwordFocusNode;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final bool displayErrors;

  @override
  String toString() {
    return 'SignInCubitState(passwordFocusNode: $passwordFocusNode, email: $email, password: $password, displayErrors: $displayErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInCubitStateImpl &&
            (identical(other.passwordFocusNode, passwordFocusNode) ||
                other.passwordFocusNode == passwordFocusNode) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayErrors, displayErrors) ||
                other.displayErrors == displayErrors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, passwordFocusNode, email, password, displayErrors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInCubitStateImplCopyWith<_$SignInCubitStateImpl> get copyWith =>
      __$$SignInCubitStateImplCopyWithImpl<_$SignInCubitStateImpl>(
          this, _$identity);
}

abstract class _SignInCubitState implements SignInCubitState {
  const factory _SignInCubitState(
      {required final FocusNode passwordFocusNode,
      final Email email,
      final Password password,
      final bool displayErrors}) = _$SignInCubitStateImpl;

  @override
  FocusNode get passwordFocusNode;
  @override
  Email get email;
  @override
  Password get password;
  @override
  bool get displayErrors;
  @override
  @JsonKey(ignore: true)
  _$$SignInCubitStateImplCopyWith<_$SignInCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
