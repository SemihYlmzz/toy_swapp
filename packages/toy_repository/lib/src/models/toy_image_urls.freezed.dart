// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toy_image_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToyImageUrls _$ToyImageUrlsFromJson(Map<String, dynamic> json) {
  return _ToyImageUrls.fromJson(json);
}

/// @nodoc
mixin _$ToyImageUrls {
  String get url1024 => throw _privateConstructorUsedError;
  String get url128 => throw _privateConstructorUsedError;
  String get url256 => throw _privateConstructorUsedError;
  String get url512 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToyImageUrlsCopyWith<ToyImageUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToyImageUrlsCopyWith<$Res> {
  factory $ToyImageUrlsCopyWith(
          ToyImageUrls value, $Res Function(ToyImageUrls) then) =
      _$ToyImageUrlsCopyWithImpl<$Res, ToyImageUrls>;
  @useResult
  $Res call({String url1024, String url128, String url256, String url512});
}

/// @nodoc
class _$ToyImageUrlsCopyWithImpl<$Res, $Val extends ToyImageUrls>
    implements $ToyImageUrlsCopyWith<$Res> {
  _$ToyImageUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url1024 = null,
    Object? url128 = null,
    Object? url256 = null,
    Object? url512 = null,
  }) {
    return _then(_value.copyWith(
      url1024: null == url1024
          ? _value.url1024
          : url1024 // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToyImageUrlsImplCopyWith<$Res>
    implements $ToyImageUrlsCopyWith<$Res> {
  factory _$$ToyImageUrlsImplCopyWith(
          _$ToyImageUrlsImpl value, $Res Function(_$ToyImageUrlsImpl) then) =
      __$$ToyImageUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url1024, String url128, String url256, String url512});
}

/// @nodoc
class __$$ToyImageUrlsImplCopyWithImpl<$Res>
    extends _$ToyImageUrlsCopyWithImpl<$Res, _$ToyImageUrlsImpl>
    implements _$$ToyImageUrlsImplCopyWith<$Res> {
  __$$ToyImageUrlsImplCopyWithImpl(
      _$ToyImageUrlsImpl _value, $Res Function(_$ToyImageUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url1024 = null,
    Object? url128 = null,
    Object? url256 = null,
    Object? url512 = null,
  }) {
    return _then(_$ToyImageUrlsImpl(
      url1024: null == url1024
          ? _value.url1024
          : url1024 // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToyImageUrlsImpl with DiagnosticableTreeMixin implements _ToyImageUrls {
  const _$ToyImageUrlsImpl(
      {required this.url1024,
      required this.url128,
      required this.url256,
      required this.url512});

  factory _$ToyImageUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToyImageUrlsImplFromJson(json);

  @override
  final String url1024;
  @override
  final String url128;
  @override
  final String url256;
  @override
  final String url512;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ToyImageUrls(url1024: $url1024, url128: $url128, url256: $url256, url512: $url512)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ToyImageUrls'))
      ..add(DiagnosticsProperty('url1024', url1024))
      ..add(DiagnosticsProperty('url128', url128))
      ..add(DiagnosticsProperty('url256', url256))
      ..add(DiagnosticsProperty('url512', url512));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyImageUrlsImpl &&
            (identical(other.url1024, url1024) || other.url1024 == url1024) &&
            (identical(other.url128, url128) || other.url128 == url128) &&
            (identical(other.url256, url256) || other.url256 == url256) &&
            (identical(other.url512, url512) || other.url512 == url512));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url1024, url128, url256, url512);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyImageUrlsImplCopyWith<_$ToyImageUrlsImpl> get copyWith =>
      __$$ToyImageUrlsImplCopyWithImpl<_$ToyImageUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToyImageUrlsImplToJson(
      this,
    );
  }
}

abstract class _ToyImageUrls implements ToyImageUrls {
  const factory _ToyImageUrls(
      {required final String url1024,
      required final String url128,
      required final String url256,
      required final String url512}) = _$ToyImageUrlsImpl;

  factory _ToyImageUrls.fromJson(Map<String, dynamic> json) =
      _$ToyImageUrlsImpl.fromJson;

  @override
  String get url1024;
  @override
  String get url128;
  @override
  String get url256;
  @override
  String get url512;
  @override
  @JsonKey(ignore: true)
  _$$ToyImageUrlsImplCopyWith<_$ToyImageUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
