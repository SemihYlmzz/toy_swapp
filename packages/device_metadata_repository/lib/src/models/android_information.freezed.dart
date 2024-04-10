// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'android_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AndroidInformation _$AndroidInformationFromJson(Map<String, dynamic> json) {
  return _AndroidInformation.fromJson(json);
}

/// @nodoc
mixin _$AndroidInformation {
  int get versionSdkNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AndroidInformationCopyWith<AndroidInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AndroidInformationCopyWith<$Res> {
  factory $AndroidInformationCopyWith(
          AndroidInformation value, $Res Function(AndroidInformation) then) =
      _$AndroidInformationCopyWithImpl<$Res, AndroidInformation>;
  @useResult
  $Res call({int versionSdkNumber});
}

/// @nodoc
class _$AndroidInformationCopyWithImpl<$Res, $Val extends AndroidInformation>
    implements $AndroidInformationCopyWith<$Res> {
  _$AndroidInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionSdkNumber = null,
  }) {
    return _then(_value.copyWith(
      versionSdkNumber: null == versionSdkNumber
          ? _value.versionSdkNumber
          : versionSdkNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AndroidInformationImplCopyWith<$Res>
    implements $AndroidInformationCopyWith<$Res> {
  factory _$$AndroidInformationImplCopyWith(_$AndroidInformationImpl value,
          $Res Function(_$AndroidInformationImpl) then) =
      __$$AndroidInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int versionSdkNumber});
}

/// @nodoc
class __$$AndroidInformationImplCopyWithImpl<$Res>
    extends _$AndroidInformationCopyWithImpl<$Res, _$AndroidInformationImpl>
    implements _$$AndroidInformationImplCopyWith<$Res> {
  __$$AndroidInformationImplCopyWithImpl(_$AndroidInformationImpl _value,
      $Res Function(_$AndroidInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionSdkNumber = null,
  }) {
    return _then(_$AndroidInformationImpl(
      versionSdkNumber: null == versionSdkNumber
          ? _value.versionSdkNumber
          : versionSdkNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AndroidInformationImpl implements _AndroidInformation {
  _$AndroidInformationImpl({required this.versionSdkNumber});

  factory _$AndroidInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AndroidInformationImplFromJson(json);

  @override
  final int versionSdkNumber;

  @override
  String toString() {
    return 'AndroidInformation(versionSdkNumber: $versionSdkNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidInformationImpl &&
            (identical(other.versionSdkNumber, versionSdkNumber) ||
                other.versionSdkNumber == versionSdkNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, versionSdkNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidInformationImplCopyWith<_$AndroidInformationImpl> get copyWith =>
      __$$AndroidInformationImplCopyWithImpl<_$AndroidInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AndroidInformationImplToJson(
      this,
    );
  }
}

abstract class _AndroidInformation implements AndroidInformation {
  factory _AndroidInformation({required final int versionSdkNumber}) =
      _$AndroidInformationImpl;

  factory _AndroidInformation.fromJson(Map<String, dynamic> json) =
      _$AndroidInformationImpl.fromJson;

  @override
  int get versionSdkNumber;
  @override
  @JsonKey(ignore: true)
  _$$AndroidInformationImplCopyWith<_$AndroidInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
