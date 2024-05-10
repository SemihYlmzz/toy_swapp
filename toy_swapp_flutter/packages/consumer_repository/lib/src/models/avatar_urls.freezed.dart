// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvatarUrls _$AvatarUrlsFromJson(Map<String, dynamic> json) {
  return _AvatarUrls.fromJson(json);
}

/// @nodoc
mixin _$AvatarUrls {
  String get url128 => throw _privateConstructorUsedError;
  String get url256 => throw _privateConstructorUsedError;
  String get url512 => throw _privateConstructorUsedError;
  String get url1024 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarUrlsCopyWith<AvatarUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarUrlsCopyWith<$Res> {
  factory $AvatarUrlsCopyWith(
          AvatarUrls value, $Res Function(AvatarUrls) then) =
      _$AvatarUrlsCopyWithImpl<$Res, AvatarUrls>;
  @useResult
  $Res call({String url128, String url256, String url512, String url1024});
}

/// @nodoc
class _$AvatarUrlsCopyWithImpl<$Res, $Val extends AvatarUrls>
    implements $AvatarUrlsCopyWith<$Res> {
  _$AvatarUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url128 = null,
    Object? url256 = null,
    Object? url512 = null,
    Object? url1024 = null,
  }) {
    return _then(_value.copyWith(
      url128: null == url128
          ? _value.url128
          : url128 // ignore: cast_nullable_to_non_nullable
              as String,
      url256: null == url256
          ? _value.url256
          : url256 // ignore: cast_nullable_to_non_nullable
              as String,
      url512: null == url512
          ? _value.url512
          : url512 // ignore: cast_nullable_to_non_nullable
              as String,
      url1024: null == url1024
          ? _value.url1024
          : url1024 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarUrlsImplCopyWith<$Res>
    implements $AvatarUrlsCopyWith<$Res> {
  factory _$$AvatarUrlsImplCopyWith(
          _$AvatarUrlsImpl value, $Res Function(_$AvatarUrlsImpl) then) =
      __$$AvatarUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url128, String url256, String url512, String url1024});
}

/// @nodoc
class __$$AvatarUrlsImplCopyWithImpl<$Res>
    extends _$AvatarUrlsCopyWithImpl<$Res, _$AvatarUrlsImpl>
    implements _$$AvatarUrlsImplCopyWith<$Res> {
  __$$AvatarUrlsImplCopyWithImpl(
      _$AvatarUrlsImpl _value, $Res Function(_$AvatarUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url128 = null,
    Object? url256 = null,
    Object? url512 = null,
    Object? url1024 = null,
  }) {
    return _then(_$AvatarUrlsImpl(
      url128: null == url128
          ? _value.url128
          : url128 // ignore: cast_nullable_to_non_nullable
              as String,
      url256: null == url256
          ? _value.url256
          : url256 // ignore: cast_nullable_to_non_nullable
              as String,
      url512: null == url512
          ? _value.url512
          : url512 // ignore: cast_nullable_to_non_nullable
              as String,
      url1024: null == url1024
          ? _value.url1024
          : url1024 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarUrlsImpl with DiagnosticableTreeMixin implements _AvatarUrls {
  const _$AvatarUrlsImpl(
      {required this.url128,
      required this.url256,
      required this.url512,
      required this.url1024});

  factory _$AvatarUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarUrlsImplFromJson(json);

  @override
  final String url128;
  @override
  final String url256;
  @override
  final String url512;
  @override
  final String url1024;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AvatarUrls(url128: $url128, url256: $url256, url512: $url512, url1024: $url1024)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AvatarUrls'))
      ..add(DiagnosticsProperty('url128', url128))
      ..add(DiagnosticsProperty('url256', url256))
      ..add(DiagnosticsProperty('url512', url512))
      ..add(DiagnosticsProperty('url1024', url1024));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarUrlsImpl &&
            (identical(other.url128, url128) || other.url128 == url128) &&
            (identical(other.url256, url256) || other.url256 == url256) &&
            (identical(other.url512, url512) || other.url512 == url512) &&
            (identical(other.url1024, url1024) || other.url1024 == url1024));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url128, url256, url512, url1024);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarUrlsImplCopyWith<_$AvatarUrlsImpl> get copyWith =>
      __$$AvatarUrlsImplCopyWithImpl<_$AvatarUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarUrlsImplToJson(
      this,
    );
  }
}

abstract class _AvatarUrls implements AvatarUrls {
  const factory _AvatarUrls(
      {required final String url128,
      required final String url256,
      required final String url512,
      required final String url1024}) = _$AvatarUrlsImpl;

  factory _AvatarUrls.fromJson(Map<String, dynamic> json) =
      _$AvatarUrlsImpl.fromJson;

  @override
  String get url128;
  @override
  String get url256;
  @override
  String get url512;
  @override
  String get url1024;
  @override
  @JsonKey(ignore: true)
  _$$AvatarUrlsImplCopyWith<_$AvatarUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
