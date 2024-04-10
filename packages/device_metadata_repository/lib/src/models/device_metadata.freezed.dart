// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceMetadata _$DeviceMetadataFromJson(Map<String, dynamic> json) {
  return _DeviceMetadata.fromJson(json);
}

/// @nodoc
mixin _$DeviceMetadata {
  AndroidInformation? get androidInformation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceMetadataCopyWith<DeviceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceMetadataCopyWith<$Res> {
  factory $DeviceMetadataCopyWith(
          DeviceMetadata value, $Res Function(DeviceMetadata) then) =
      _$DeviceMetadataCopyWithImpl<$Res, DeviceMetadata>;
  @useResult
  $Res call({AndroidInformation? androidInformation});

  $AndroidInformationCopyWith<$Res>? get androidInformation;
}

/// @nodoc
class _$DeviceMetadataCopyWithImpl<$Res, $Val extends DeviceMetadata>
    implements $DeviceMetadataCopyWith<$Res> {
  _$DeviceMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? androidInformation = freezed,
  }) {
    return _then(_value.copyWith(
      androidInformation: freezed == androidInformation
          ? _value.androidInformation
          : androidInformation // ignore: cast_nullable_to_non_nullable
              as AndroidInformation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AndroidInformationCopyWith<$Res>? get androidInformation {
    if (_value.androidInformation == null) {
      return null;
    }

    return $AndroidInformationCopyWith<$Res>(_value.androidInformation!,
        (value) {
      return _then(_value.copyWith(androidInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceMetadataImplCopyWith<$Res>
    implements $DeviceMetadataCopyWith<$Res> {
  factory _$$DeviceMetadataImplCopyWith(_$DeviceMetadataImpl value,
          $Res Function(_$DeviceMetadataImpl) then) =
      __$$DeviceMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AndroidInformation? androidInformation});

  @override
  $AndroidInformationCopyWith<$Res>? get androidInformation;
}

/// @nodoc
class __$$DeviceMetadataImplCopyWithImpl<$Res>
    extends _$DeviceMetadataCopyWithImpl<$Res, _$DeviceMetadataImpl>
    implements _$$DeviceMetadataImplCopyWith<$Res> {
  __$$DeviceMetadataImplCopyWithImpl(
      _$DeviceMetadataImpl _value, $Res Function(_$DeviceMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? androidInformation = freezed,
  }) {
    return _then(_$DeviceMetadataImpl(
      androidInformation: freezed == androidInformation
          ? _value.androidInformation
          : androidInformation // ignore: cast_nullable_to_non_nullable
              as AndroidInformation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceMetadataImpl implements _DeviceMetadata {
  _$DeviceMetadataImpl({required this.androidInformation});

  factory _$DeviceMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceMetadataImplFromJson(json);

  @override
  final AndroidInformation? androidInformation;

  @override
  String toString() {
    return 'DeviceMetadata(androidInformation: $androidInformation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceMetadataImpl &&
            (identical(other.androidInformation, androidInformation) ||
                other.androidInformation == androidInformation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, androidInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceMetadataImplCopyWith<_$DeviceMetadataImpl> get copyWith =>
      __$$DeviceMetadataImplCopyWithImpl<_$DeviceMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceMetadataImplToJson(
      this,
    );
  }
}

abstract class _DeviceMetadata implements DeviceMetadata {
  factory _DeviceMetadata(
          {required final AndroidInformation? androidInformation}) =
      _$DeviceMetadataImpl;

  factory _DeviceMetadata.fromJson(Map<String, dynamic> json) =
      _$DeviceMetadataImpl.fromJson;

  @override
  AndroidInformation? get androidInformation;
  @override
  @JsonKey(ignore: true)
  _$$DeviceMetadataImplCopyWith<_$DeviceMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
