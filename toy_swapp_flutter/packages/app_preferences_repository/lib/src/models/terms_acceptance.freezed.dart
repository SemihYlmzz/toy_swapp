// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_acceptance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TermsAcceptance _$TermsAcceptanceFromJson(Map<String, dynamic> json) {
  return _TermsAcceptance.fromJson(json);
}

/// @nodoc
mixin _$TermsAcceptance {
  int get appCoreVersionNumber => throw _privateConstructorUsedError;
  int get termsReleaseNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsAcceptanceCopyWith<TermsAcceptance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsAcceptanceCopyWith<$Res> {
  factory $TermsAcceptanceCopyWith(
          TermsAcceptance value, $Res Function(TermsAcceptance) then) =
      _$TermsAcceptanceCopyWithImpl<$Res, TermsAcceptance>;
  @useResult
  $Res call({int appCoreVersionNumber, int termsReleaseNumber});
}

/// @nodoc
class _$TermsAcceptanceCopyWithImpl<$Res, $Val extends TermsAcceptance>
    implements $TermsAcceptanceCopyWith<$Res> {
  _$TermsAcceptanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appCoreVersionNumber = null,
    Object? termsReleaseNumber = null,
  }) {
    return _then(_value.copyWith(
      appCoreVersionNumber: null == appCoreVersionNumber
          ? _value.appCoreVersionNumber
          : appCoreVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      termsReleaseNumber: null == termsReleaseNumber
          ? _value.termsReleaseNumber
          : termsReleaseNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermsAcceptanceImplCopyWith<$Res>
    implements $TermsAcceptanceCopyWith<$Res> {
  factory _$$TermsAcceptanceImplCopyWith(_$TermsAcceptanceImpl value,
          $Res Function(_$TermsAcceptanceImpl) then) =
      __$$TermsAcceptanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int appCoreVersionNumber, int termsReleaseNumber});
}

/// @nodoc
class __$$TermsAcceptanceImplCopyWithImpl<$Res>
    extends _$TermsAcceptanceCopyWithImpl<$Res, _$TermsAcceptanceImpl>
    implements _$$TermsAcceptanceImplCopyWith<$Res> {
  __$$TermsAcceptanceImplCopyWithImpl(
      _$TermsAcceptanceImpl _value, $Res Function(_$TermsAcceptanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appCoreVersionNumber = null,
    Object? termsReleaseNumber = null,
  }) {
    return _then(_$TermsAcceptanceImpl(
      appCoreVersionNumber: null == appCoreVersionNumber
          ? _value.appCoreVersionNumber
          : appCoreVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      termsReleaseNumber: null == termsReleaseNumber
          ? _value.termsReleaseNumber
          : termsReleaseNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsAcceptanceImpl implements _TermsAcceptance {
  const _$TermsAcceptanceImpl(
      {required this.appCoreVersionNumber, required this.termsReleaseNumber});

  factory _$TermsAcceptanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsAcceptanceImplFromJson(json);

  @override
  final int appCoreVersionNumber;
  @override
  final int termsReleaseNumber;

  @override
  String toString() {
    return 'TermsAcceptance(appCoreVersionNumber: $appCoreVersionNumber, termsReleaseNumber: $termsReleaseNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsAcceptanceImpl &&
            (identical(other.appCoreVersionNumber, appCoreVersionNumber) ||
                other.appCoreVersionNumber == appCoreVersionNumber) &&
            (identical(other.termsReleaseNumber, termsReleaseNumber) ||
                other.termsReleaseNumber == termsReleaseNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appCoreVersionNumber, termsReleaseNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsAcceptanceImplCopyWith<_$TermsAcceptanceImpl> get copyWith =>
      __$$TermsAcceptanceImplCopyWithImpl<_$TermsAcceptanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsAcceptanceImplToJson(
      this,
    );
  }
}

abstract class _TermsAcceptance implements TermsAcceptance {
  const factory _TermsAcceptance(
      {required final int appCoreVersionNumber,
      required final int termsReleaseNumber}) = _$TermsAcceptanceImpl;

  factory _TermsAcceptance.fromJson(Map<String, dynamic> json) =
      _$TermsAcceptanceImpl.fromJson;

  @override
  int get appCoreVersionNumber;
  @override
  int get termsReleaseNumber;
  @override
  @JsonKey(ignore: true)
  _$$TermsAcceptanceImplCopyWith<_$TermsAcceptanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
