// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consumer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Consumer _$ConsumerFromJson(Map<String, dynamic> json) {
  return _Consumer.fromJson(json);
}

/// @nodoc
mixin _$Consumer {
  String get authId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  CurrentLocation get currentLocation => throw _privateConstructorUsedError;
  AvatarUrls get avatarUrls => throw _privateConstructorUsedError;
  Counters get counters => throw _privateConstructorUsedError;
  bool get isDeletingAccount => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsumerCopyWith<Consumer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumerCopyWith<$Res> {
  factory $ConsumerCopyWith(Consumer value, $Res Function(Consumer) then) =
      _$ConsumerCopyWithImpl<$Res, Consumer>;
  @useResult
  $Res call(
      {String authId,
      String firstName,
      String lastName,
      CurrentLocation currentLocation,
      AvatarUrls avatarUrls,
      Counters counters,
      bool isDeletingAccount,
      String? email});

  $CurrentLocationCopyWith<$Res> get currentLocation;
  $AvatarUrlsCopyWith<$Res> get avatarUrls;
  $CountersCopyWith<$Res> get counters;
}

/// @nodoc
class _$ConsumerCopyWithImpl<$Res, $Val extends Consumer>
    implements $ConsumerCopyWith<$Res> {
  _$ConsumerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? currentLocation = null,
    Object? avatarUrls = null,
    Object? counters = null,
    Object? isDeletingAccount = null,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      authId: null == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as CurrentLocation,
      avatarUrls: null == avatarUrls
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as AvatarUrls,
      counters: null == counters
          ? _value.counters
          : counters // ignore: cast_nullable_to_non_nullable
              as Counters,
      isDeletingAccount: null == isDeletingAccount
          ? _value.isDeletingAccount
          : isDeletingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentLocationCopyWith<$Res> get currentLocation {
    return $CurrentLocationCopyWith<$Res>(_value.currentLocation, (value) {
      return _then(_value.copyWith(currentLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AvatarUrlsCopyWith<$Res> get avatarUrls {
    return $AvatarUrlsCopyWith<$Res>(_value.avatarUrls, (value) {
      return _then(_value.copyWith(avatarUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountersCopyWith<$Res> get counters {
    return $CountersCopyWith<$Res>(_value.counters, (value) {
      return _then(_value.copyWith(counters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsumerImplCopyWith<$Res>
    implements $ConsumerCopyWith<$Res> {
  factory _$$ConsumerImplCopyWith(
          _$ConsumerImpl value, $Res Function(_$ConsumerImpl) then) =
      __$$ConsumerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authId,
      String firstName,
      String lastName,
      CurrentLocation currentLocation,
      AvatarUrls avatarUrls,
      Counters counters,
      bool isDeletingAccount,
      String? email});

  @override
  $CurrentLocationCopyWith<$Res> get currentLocation;
  @override
  $AvatarUrlsCopyWith<$Res> get avatarUrls;
  @override
  $CountersCopyWith<$Res> get counters;
}

/// @nodoc
class __$$ConsumerImplCopyWithImpl<$Res>
    extends _$ConsumerCopyWithImpl<$Res, _$ConsumerImpl>
    implements _$$ConsumerImplCopyWith<$Res> {
  __$$ConsumerImplCopyWithImpl(
      _$ConsumerImpl _value, $Res Function(_$ConsumerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? currentLocation = null,
    Object? avatarUrls = null,
    Object? counters = null,
    Object? isDeletingAccount = null,
    Object? email = freezed,
  }) {
    return _then(_$ConsumerImpl(
      authId: null == authId
          ? _value.authId
          : authId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as CurrentLocation,
      avatarUrls: null == avatarUrls
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as AvatarUrls,
      counters: null == counters
          ? _value.counters
          : counters // ignore: cast_nullable_to_non_nullable
              as Counters,
      isDeletingAccount: null == isDeletingAccount
          ? _value.isDeletingAccount
          : isDeletingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsumerImpl with DiagnosticableTreeMixin implements _Consumer {
  const _$ConsumerImpl(
      {required this.authId,
      required this.firstName,
      required this.lastName,
      required this.currentLocation,
      required this.avatarUrls,
      required this.counters,
      required this.isDeletingAccount,
      this.email});

  factory _$ConsumerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsumerImplFromJson(json);

  @override
  final String authId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final CurrentLocation currentLocation;
  @override
  final AvatarUrls avatarUrls;
  @override
  final Counters counters;
  @override
  final bool isDeletingAccount;
  @override
  final String? email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Consumer(authId: $authId, firstName: $firstName, lastName: $lastName, currentLocation: $currentLocation, avatarUrls: $avatarUrls, counters: $counters, isDeletingAccount: $isDeletingAccount, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Consumer'))
      ..add(DiagnosticsProperty('authId', authId))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('currentLocation', currentLocation))
      ..add(DiagnosticsProperty('avatarUrls', avatarUrls))
      ..add(DiagnosticsProperty('counters', counters))
      ..add(DiagnosticsProperty('isDeletingAccount', isDeletingAccount))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsumerImpl &&
            (identical(other.authId, authId) || other.authId == authId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.avatarUrls, avatarUrls) ||
                other.avatarUrls == avatarUrls) &&
            (identical(other.counters, counters) ||
                other.counters == counters) &&
            (identical(other.isDeletingAccount, isDeletingAccount) ||
                other.isDeletingAccount == isDeletingAccount) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authId, firstName, lastName,
      currentLocation, avatarUrls, counters, isDeletingAccount, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsumerImplCopyWith<_$ConsumerImpl> get copyWith =>
      __$$ConsumerImplCopyWithImpl<_$ConsumerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsumerImplToJson(
      this,
    );
  }
}

abstract class _Consumer implements Consumer {
  const factory _Consumer(
      {required final String authId,
      required final String firstName,
      required final String lastName,
      required final CurrentLocation currentLocation,
      required final AvatarUrls avatarUrls,
      required final Counters counters,
      required final bool isDeletingAccount,
      final String? email}) = _$ConsumerImpl;

  factory _Consumer.fromJson(Map<String, dynamic> json) =
      _$ConsumerImpl.fromJson;

  @override
  String get authId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  CurrentLocation get currentLocation;
  @override
  AvatarUrls get avatarUrls;
  @override
  Counters get counters;
  @override
  bool get isDeletingAccount;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$ConsumerImplCopyWith<_$ConsumerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
