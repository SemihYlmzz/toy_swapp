// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permissions_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PermissionsStatus _$PermissionsStatusFromJson(Map<String, dynamic> json) {
  return _PermissionsStatus.fromJson(json);
}

/// @nodoc
mixin _$PermissionsStatus {
  PermissionState get camera => throw _privateConstructorUsedError;
  PermissionState get location => throw _privateConstructorUsedError;
  PermissionState get photos => throw _privateConstructorUsedError;
  PermissionState get storage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionsStatusCopyWith<PermissionsStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsStatusCopyWith<$Res> {
  factory $PermissionsStatusCopyWith(
          PermissionsStatus value, $Res Function(PermissionsStatus) then) =
      _$PermissionsStatusCopyWithImpl<$Res, PermissionsStatus>;
  @useResult
  $Res call(
      {PermissionState camera,
      PermissionState location,
      PermissionState photos,
      PermissionState storage});
}

/// @nodoc
class _$PermissionsStatusCopyWithImpl<$Res, $Val extends PermissionsStatus>
    implements $PermissionsStatusCopyWith<$Res> {
  _$PermissionsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camera = null,
    Object? location = null,
    Object? photos = null,
    Object? storage = null,
  }) {
    return _then(_value.copyWith(
      camera: null == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as PermissionState,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PermissionState,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as PermissionState,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as PermissionState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionsStatusImplCopyWith<$Res>
    implements $PermissionsStatusCopyWith<$Res> {
  factory _$$PermissionsStatusImplCopyWith(_$PermissionsStatusImpl value,
          $Res Function(_$PermissionsStatusImpl) then) =
      __$$PermissionsStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PermissionState camera,
      PermissionState location,
      PermissionState photos,
      PermissionState storage});
}

/// @nodoc
class __$$PermissionsStatusImplCopyWithImpl<$Res>
    extends _$PermissionsStatusCopyWithImpl<$Res, _$PermissionsStatusImpl>
    implements _$$PermissionsStatusImplCopyWith<$Res> {
  __$$PermissionsStatusImplCopyWithImpl(_$PermissionsStatusImpl _value,
      $Res Function(_$PermissionsStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camera = null,
    Object? location = null,
    Object? photos = null,
    Object? storage = null,
  }) {
    return _then(_$PermissionsStatusImpl(
      camera: null == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as PermissionState,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PermissionState,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as PermissionState,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as PermissionState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionsStatusImpl implements _PermissionsStatus {
  _$PermissionsStatusImpl(
      {required this.camera,
      required this.location,
      required this.photos,
      required this.storage});

  factory _$PermissionsStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionsStatusImplFromJson(json);

  @override
  final PermissionState camera;
  @override
  final PermissionState location;
  @override
  final PermissionState photos;
  @override
  final PermissionState storage;

  @override
  String toString() {
    return 'PermissionsStatus(camera: $camera, location: $location, photos: $photos, storage: $storage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsStatusImpl &&
            (identical(other.camera, camera) || other.camera == camera) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.storage, storage) || other.storage == storage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, camera, location, photos, storage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionsStatusImplCopyWith<_$PermissionsStatusImpl> get copyWith =>
      __$$PermissionsStatusImplCopyWithImpl<_$PermissionsStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionsStatusImplToJson(
      this,
    );
  }
}

abstract class _PermissionsStatus implements PermissionsStatus {
  factory _PermissionsStatus(
      {required final PermissionState camera,
      required final PermissionState location,
      required final PermissionState photos,
      required final PermissionState storage}) = _$PermissionsStatusImpl;

  factory _PermissionsStatus.fromJson(Map<String, dynamic> json) =
      _$PermissionsStatusImpl.fromJson;

  @override
  PermissionState get camera;
  @override
  PermissionState get location;
  @override
  PermissionState get photos;
  @override
  PermissionState get storage;
  @override
  @JsonKey(ignore: true)
  _$$PermissionsStatusImplCopyWith<_$PermissionsStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
