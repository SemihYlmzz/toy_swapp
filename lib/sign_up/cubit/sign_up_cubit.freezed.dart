// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpCubitState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpCubitStateCopyWith<SignUpCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCubitStateCopyWith<$Res> {
  factory $SignUpCubitStateCopyWith(
          SignUpCubitState value, $Res Function(SignUpCubitState) then) =
      _$SignUpCubitStateCopyWithImpl<$Res, SignUpCubitState>;
  @useResult
  $Res call({String email, String password, String confirmPassword});
}

/// @nodoc
class _$SignUpCubitStateCopyWithImpl<$Res, $Val extends SignUpCubitState>
    implements $SignUpCubitStateCopyWith<$Res> {
  _$SignUpCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpCubitStateImplCopyWith<$Res>
    implements $SignUpCubitStateCopyWith<$Res> {
  factory _$$SignUpCubitStateImplCopyWith(_$SignUpCubitStateImpl value,
          $Res Function(_$SignUpCubitStateImpl) then) =
      __$$SignUpCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String confirmPassword});
}

/// @nodoc
class __$$SignUpCubitStateImplCopyWithImpl<$Res>
    extends _$SignUpCubitStateCopyWithImpl<$Res, _$SignUpCubitStateImpl>
    implements _$$SignUpCubitStateImplCopyWith<$Res> {
  __$$SignUpCubitStateImplCopyWithImpl(_$SignUpCubitStateImpl _value,
      $Res Function(_$SignUpCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$SignUpCubitStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpCubitStateImpl implements _SignUpCubitState {
  const _$SignUpCubitStateImpl(
      {this.email = '', this.password = '', this.confirmPassword = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpCubitState(email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpCubitStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpCubitStateImplCopyWith<_$SignUpCubitStateImpl> get copyWith =>
      __$$SignUpCubitStateImplCopyWithImpl<_$SignUpCubitStateImpl>(
          this, _$identity);
}

abstract class _SignUpCubitState implements SignUpCubitState {
  const factory _SignUpCubitState(
      {final String email,
      final String password,
      final String confirmPassword}) = _$SignUpCubitStateImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$SignUpCubitStateImplCopyWith<_$SignUpCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
