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
  TermsVersions get termsVersions => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  int get coreVersionNumber => throw _privateConstructorUsedError;

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
  $Res call(
      {TermsVersions termsVersions,
      String appName,
      String version,
      int coreVersionNumber});

  $TermsVersionsCopyWith<$Res> get termsVersions;
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
    Object? termsVersions = null,
    Object? appName = null,
    Object? version = null,
    Object? coreVersionNumber = null,
  }) {
    return _then(_value.copyWith(
      termsVersions: null == termsVersions
          ? _value.termsVersions
          : termsVersions // ignore: cast_nullable_to_non_nullable
              as TermsVersions,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      coreVersionNumber: null == coreVersionNumber
          ? _value.coreVersionNumber
          : coreVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TermsVersionsCopyWith<$Res> get termsVersions {
    return $TermsVersionsCopyWith<$Res>(_value.termsVersions, (value) {
      return _then(_value.copyWith(termsVersions: value) as $Val);
    });
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
  $Res call(
      {TermsVersions termsVersions,
      String appName,
      String version,
      int coreVersionNumber});

  @override
  $TermsVersionsCopyWith<$Res> get termsVersions;
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
    Object? termsVersions = null,
    Object? appName = null,
    Object? version = null,
    Object? coreVersionNumber = null,
  }) {
    return _then(_$AppMetadataImpl(
      termsVersions: null == termsVersions
          ? _value.termsVersions
          : termsVersions // ignore: cast_nullable_to_non_nullable
              as TermsVersions,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      coreVersionNumber: null == coreVersionNumber
          ? _value.coreVersionNumber
          : coreVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppMetadataImpl implements _AppMetadata {
  _$AppMetadataImpl(
      {required this.termsVersions,
      required this.appName,
      required this.version,
      required this.coreVersionNumber});

  factory _$AppMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppMetadataImplFromJson(json);

  @override
  final TermsVersions termsVersions;
  @override
  final String appName;
  @override
  final String version;
  @override
  final int coreVersionNumber;

  @override
  String toString() {
    return 'AppMetadata(termsVersions: $termsVersions, appName: $appName, version: $version, coreVersionNumber: $coreVersionNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppMetadataImpl &&
            (identical(other.termsVersions, termsVersions) ||
                other.termsVersions == termsVersions) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.coreVersionNumber, coreVersionNumber) ||
                other.coreVersionNumber == coreVersionNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, termsVersions, appName, version, coreVersionNumber);

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
      {required final TermsVersions termsVersions,
      required final String appName,
      required final String version,
      required final int coreVersionNumber}) = _$AppMetadataImpl;

  factory _AppMetadata.fromJson(Map<String, dynamic> json) =
      _$AppMetadataImpl.fromJson;

  @override
  TermsVersions get termsVersions;
  @override
  String get appName;
  @override
  String get version;
  @override
  int get coreVersionNumber;
  @override
  @JsonKey(ignore: true)
  _$$AppMetadataImplCopyWith<_$AppMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
