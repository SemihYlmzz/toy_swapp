// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_versions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TermsVersions _$TermsVersionsFromJson(Map<String, dynamic> json) {
  return _TermsVersions.fromJson(json);
}

/// @nodoc
mixin _$TermsVersions {
  int get termsVersionNumber => throw _privateConstructorUsedError;
  int get devangsPrivacyPolicyVersionNumber =>
      throw _privateConstructorUsedError;
  int get toySwappPrivacyPolicyVersionNumber =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsVersionsCopyWith<TermsVersions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsVersionsCopyWith<$Res> {
  factory $TermsVersionsCopyWith(
          TermsVersions value, $Res Function(TermsVersions) then) =
      _$TermsVersionsCopyWithImpl<$Res, TermsVersions>;
  @useResult
  $Res call(
      {int termsVersionNumber,
      int devangsPrivacyPolicyVersionNumber,
      int toySwappPrivacyPolicyVersionNumber});
}

/// @nodoc
class _$TermsVersionsCopyWithImpl<$Res, $Val extends TermsVersions>
    implements $TermsVersionsCopyWith<$Res> {
  _$TermsVersionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsVersionNumber = null,
    Object? devangsPrivacyPolicyVersionNumber = null,
    Object? toySwappPrivacyPolicyVersionNumber = null,
  }) {
    return _then(_value.copyWith(
      termsVersionNumber: null == termsVersionNumber
          ? _value.termsVersionNumber
          : termsVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      devangsPrivacyPolicyVersionNumber: null ==
              devangsPrivacyPolicyVersionNumber
          ? _value.devangsPrivacyPolicyVersionNumber
          : devangsPrivacyPolicyVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      toySwappPrivacyPolicyVersionNumber: null ==
              toySwappPrivacyPolicyVersionNumber
          ? _value.toySwappPrivacyPolicyVersionNumber
          : toySwappPrivacyPolicyVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermsVersionsImplCopyWith<$Res>
    implements $TermsVersionsCopyWith<$Res> {
  factory _$$TermsVersionsImplCopyWith(
          _$TermsVersionsImpl value, $Res Function(_$TermsVersionsImpl) then) =
      __$$TermsVersionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int termsVersionNumber,
      int devangsPrivacyPolicyVersionNumber,
      int toySwappPrivacyPolicyVersionNumber});
}

/// @nodoc
class __$$TermsVersionsImplCopyWithImpl<$Res>
    extends _$TermsVersionsCopyWithImpl<$Res, _$TermsVersionsImpl>
    implements _$$TermsVersionsImplCopyWith<$Res> {
  __$$TermsVersionsImplCopyWithImpl(
      _$TermsVersionsImpl _value, $Res Function(_$TermsVersionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsVersionNumber = null,
    Object? devangsPrivacyPolicyVersionNumber = null,
    Object? toySwappPrivacyPolicyVersionNumber = null,
  }) {
    return _then(_$TermsVersionsImpl(
      termsVersionNumber: null == termsVersionNumber
          ? _value.termsVersionNumber
          : termsVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      devangsPrivacyPolicyVersionNumber: null ==
              devangsPrivacyPolicyVersionNumber
          ? _value.devangsPrivacyPolicyVersionNumber
          : devangsPrivacyPolicyVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      toySwappPrivacyPolicyVersionNumber: null ==
              toySwappPrivacyPolicyVersionNumber
          ? _value.toySwappPrivacyPolicyVersionNumber
          : toySwappPrivacyPolicyVersionNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsVersionsImpl implements _TermsVersions {
  _$TermsVersionsImpl(
      {required this.termsVersionNumber,
      required this.devangsPrivacyPolicyVersionNumber,
      required this.toySwappPrivacyPolicyVersionNumber});

  factory _$TermsVersionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsVersionsImplFromJson(json);

  @override
  final int termsVersionNumber;
  @override
  final int devangsPrivacyPolicyVersionNumber;
  @override
  final int toySwappPrivacyPolicyVersionNumber;

  @override
  String toString() {
    return 'TermsVersions(termsVersionNumber: $termsVersionNumber, devangsPrivacyPolicyVersionNumber: $devangsPrivacyPolicyVersionNumber, toySwappPrivacyPolicyVersionNumber: $toySwappPrivacyPolicyVersionNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsVersionsImpl &&
            (identical(other.termsVersionNumber, termsVersionNumber) ||
                other.termsVersionNumber == termsVersionNumber) &&
            (identical(other.devangsPrivacyPolicyVersionNumber,
                    devangsPrivacyPolicyVersionNumber) ||
                other.devangsPrivacyPolicyVersionNumber ==
                    devangsPrivacyPolicyVersionNumber) &&
            (identical(other.toySwappPrivacyPolicyVersionNumber,
                    toySwappPrivacyPolicyVersionNumber) ||
                other.toySwappPrivacyPolicyVersionNumber ==
                    toySwappPrivacyPolicyVersionNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, termsVersionNumber,
      devangsPrivacyPolicyVersionNumber, toySwappPrivacyPolicyVersionNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsVersionsImplCopyWith<_$TermsVersionsImpl> get copyWith =>
      __$$TermsVersionsImplCopyWithImpl<_$TermsVersionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsVersionsImplToJson(
      this,
    );
  }
}

abstract class _TermsVersions implements TermsVersions {
  factory _TermsVersions(
          {required final int termsVersionNumber,
          required final int devangsPrivacyPolicyVersionNumber,
          required final int toySwappPrivacyPolicyVersionNumber}) =
      _$TermsVersionsImpl;

  factory _TermsVersions.fromJson(Map<String, dynamic> json) =
      _$TermsVersionsImpl.fromJson;

  @override
  int get termsVersionNumber;
  @override
  int get devangsPrivacyPolicyVersionNumber;
  @override
  int get toySwappPrivacyPolicyVersionNumber;
  @override
  @JsonKey(ignore: true)
  _$$TermsVersionsImplCopyWith<_$TermsVersionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
