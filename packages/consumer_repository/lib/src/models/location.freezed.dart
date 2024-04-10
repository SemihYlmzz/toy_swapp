// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentLocation _$CurrentLocationFromJson(Map<String, dynamic> json) {
  return _CurrentLocation.fromJson(json);
}

/// @nodoc
mixin _$CurrentLocation {
  num get latitude => throw _privateConstructorUsedError;
  num get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentLocationCopyWith<CurrentLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentLocationCopyWith<$Res> {
  factory $CurrentLocationCopyWith(
          CurrentLocation value, $Res Function(CurrentLocation) then) =
      _$CurrentLocationCopyWithImpl<$Res, CurrentLocation>;
  @useResult
  $Res call({num latitude, num longitude});
}

/// @nodoc
class _$CurrentLocationCopyWithImpl<$Res, $Val extends CurrentLocation>
    implements $CurrentLocationCopyWith<$Res> {
  _$CurrentLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentLocationImplCopyWith<$Res>
    implements $CurrentLocationCopyWith<$Res> {
  factory _$$CurrentLocationImplCopyWith(_$CurrentLocationImpl value,
          $Res Function(_$CurrentLocationImpl) then) =
      __$$CurrentLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num latitude, num longitude});
}

/// @nodoc
class __$$CurrentLocationImplCopyWithImpl<$Res>
    extends _$CurrentLocationCopyWithImpl<$Res, _$CurrentLocationImpl>
    implements _$$CurrentLocationImplCopyWith<$Res> {
  __$$CurrentLocationImplCopyWithImpl(
      _$CurrentLocationImpl _value, $Res Function(_$CurrentLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$CurrentLocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentLocationImpl
    with DiagnosticableTreeMixin
    implements _CurrentLocation {
  const _$CurrentLocationImpl(
      {required this.latitude, required this.longitude});

  factory _$CurrentLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentLocationImplFromJson(json);

  @override
  final num latitude;
  @override
  final num longitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentLocation'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentLocationImplCopyWith<_$CurrentLocationImpl> get copyWith =>
      __$$CurrentLocationImplCopyWithImpl<_$CurrentLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentLocationImplToJson(
      this,
    );
  }
}

abstract class _CurrentLocation implements CurrentLocation {
  const factory _CurrentLocation(
      {required final num latitude,
      required final num longitude}) = _$CurrentLocationImpl;

  factory _CurrentLocation.fromJson(Map<String, dynamic> json) =
      _$CurrentLocationImpl.fromJson;

  @override
  num get latitude;
  @override
  num get longitude;
  @override
  @JsonKey(ignore: true)
  _$$CurrentLocationImplCopyWith<_$CurrentLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
