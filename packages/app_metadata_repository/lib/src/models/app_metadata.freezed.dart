// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppMetadata _$AppMetadataFromJson(Map<String, dynamic> json) {
  return _AppMetadata.fromJson(json);
}

/// @nodoc
mixin _$AppMetadata {
  double get termsVersion => throw _privateConstructorUsedError;
  String get appVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppMetadataCopyWith<AppMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMetadataCopyWith<$Res> {
  factory $AppMetadataCopyWith(
          AppMetadata value, $Res Function(AppMetadata) then) =
      _$AppMetadataCopyWithImpl<$Res, AppMetadata>;
  @useResult
  $Res call({double termsVersion, String appVersion});
}

/// @nodoc
class _$AppMetadataCopyWithImpl<$Res, $Val extends AppMetadata>
    implements $AppMetadataCopyWith<$Res> {
  _$AppMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsVersion = null,
    Object? appVersion = null,
  }) {
    return _then(_value.copyWith(
      termsVersion: null == termsVersion
          ? _value.termsVersion
          : termsVersion // ignore: cast_nullable_to_non_nullable
              as double,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppMetadataImplCopyWith<$Res>
    implements $AppMetadataCopyWith<$Res> {
  factory _$$AppMetadataImplCopyWith(
          _$AppMetadataImpl value, $Res Function(_$AppMetadataImpl) then) =
      __$$AppMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double termsVersion, String appVersion});
}

/// @nodoc
class __$$AppMetadataImplCopyWithImpl<$Res>
    extends _$AppMetadataCopyWithImpl<$Res, _$AppMetadataImpl>
    implements _$$AppMetadataImplCopyWith<$Res> {
  __$$AppMetadataImplCopyWithImpl(
      _$AppMetadataImpl _value, $Res Function(_$AppMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsVersion = null,
    Object? appVersion = null,
  }) {
    return _then(_$AppMetadataImpl(
      termsVersion: null == termsVersion
          ? _value.termsVersion
          : termsVersion // ignore: cast_nullable_to_non_nullable
              as double,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppMetadataImpl implements _AppMetadata {
  _$AppMetadataImpl({required this.termsVersion, required this.appVersion});

  factory _$AppMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppMetadataImplFromJson(json);

  @override
  final double termsVersion;
  @override
  final String appVersion;

  @override
  String toString() {
    return 'AppMetadata(termsVersion: $termsVersion, appVersion: $appVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppMetadataImpl &&
            (identical(other.termsVersion, termsVersion) ||
                other.termsVersion == termsVersion) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, termsVersion, appVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppMetadataImplCopyWith<_$AppMetadataImpl> get copyWith =>
      __$$AppMetadataImplCopyWithImpl<_$AppMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppMetadataImplToJson(
      this,
    );
  }
}

abstract class _AppMetadata implements AppMetadata {
  factory _AppMetadata(
      {required final double termsVersion,
      required final String appVersion}) = _$AppMetadataImpl;

  factory _AppMetadata.fromJson(Map<String, dynamic> json) =
      _$AppMetadataImpl.fromJson;

  @override
  double get termsVersion;
  @override
  String get appVersion;
  @override
  @JsonKey(ignore: true)
  _$$AppMetadataImplCopyWith<_$AppMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
