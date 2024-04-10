// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_registration_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountRegistrationCubitState {
  Uint8List? get avatarImage => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  ({double latitude, double longitude})? get location =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountRegistrationCubitStateCopyWith<AccountRegistrationCubitState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegistrationCubitStateCopyWith<$Res> {
  factory $AccountRegistrationCubitStateCopyWith(
          AccountRegistrationCubitState value,
          $Res Function(AccountRegistrationCubitState) then) =
      _$AccountRegistrationCubitStateCopyWithImpl<$Res,
          AccountRegistrationCubitState>;
  @useResult
  $Res call(
      {Uint8List? avatarImage,
      String firstName,
      String lastName,
      ({double latitude, double longitude})? location,
      String? errorMessage});
}

/// @nodoc
class _$AccountRegistrationCubitStateCopyWithImpl<$Res,
        $Val extends AccountRegistrationCubitState>
    implements $AccountRegistrationCubitStateCopyWith<$Res> {
  _$AccountRegistrationCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarImage = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? location = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      avatarImage: freezed == avatarImage
          ? _value.avatarImage
          : avatarImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ({double latitude, double longitude})?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountRegistrationCubitStateImplCopyWith<$Res>
    implements $AccountRegistrationCubitStateCopyWith<$Res> {
  factory _$$AccountRegistrationCubitStateImplCopyWith(
          _$AccountRegistrationCubitStateImpl value,
          $Res Function(_$AccountRegistrationCubitStateImpl) then) =
      __$$AccountRegistrationCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? avatarImage,
      String firstName,
      String lastName,
      ({double latitude, double longitude})? location,
      String? errorMessage});
}

/// @nodoc
class __$$AccountRegistrationCubitStateImplCopyWithImpl<$Res>
    extends _$AccountRegistrationCubitStateCopyWithImpl<$Res,
        _$AccountRegistrationCubitStateImpl>
    implements _$$AccountRegistrationCubitStateImplCopyWith<$Res> {
  __$$AccountRegistrationCubitStateImplCopyWithImpl(
      _$AccountRegistrationCubitStateImpl _value,
      $Res Function(_$AccountRegistrationCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarImage = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? location = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AccountRegistrationCubitStateImpl(
      avatarImage: freezed == avatarImage
          ? _value.avatarImage
          : avatarImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ({double latitude, double longitude})?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountRegistrationCubitStateImpl
    implements _AccountRegistrationCubitState {
  const _$AccountRegistrationCubitStateImpl(
      {this.avatarImage,
      this.firstName = '',
      this.lastName = '',
      this.location,
      this.errorMessage});

  @override
  final Uint8List? avatarImage;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  final ({double latitude, double longitude})? location;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AccountRegistrationCubitState(avatarImage: $avatarImage, firstName: $firstName, lastName: $lastName, location: $location, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegistrationCubitStateImpl &&
            const DeepCollectionEquality()
                .equals(other.avatarImage, avatarImage) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatarImage),
      firstName,
      lastName,
      location,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegistrationCubitStateImplCopyWith<
          _$AccountRegistrationCubitStateImpl>
      get copyWith => __$$AccountRegistrationCubitStateImplCopyWithImpl<
          _$AccountRegistrationCubitStateImpl>(this, _$identity);
}

abstract class _AccountRegistrationCubitState
    implements AccountRegistrationCubitState {
  const factory _AccountRegistrationCubitState(
      {final Uint8List? avatarImage,
      final String firstName,
      final String lastName,
      final ({double latitude, double longitude})? location,
      final String? errorMessage}) = _$AccountRegistrationCubitStateImpl;

  @override
  Uint8List? get avatarImage;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  ({double latitude, double longitude})? get location;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AccountRegistrationCubitStateImplCopyWith<
          _$AccountRegistrationCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
