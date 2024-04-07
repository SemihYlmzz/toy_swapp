// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_of_use_acceptance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TermsOfUseAcceptance _$TermsOfUseAcceptanceFromJson(Map<String, dynamic> json) {
  return _TermsOfUseAcceptance.fromJson(json);
}

/// @nodoc
mixin _$TermsOfUseAcceptance {
  int get acceptedTermsReleaseNumber => throw _privateConstructorUsedError;
  int get acceptedAppBuildNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsOfUseAcceptanceCopyWith<TermsOfUseAcceptance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsOfUseAcceptanceCopyWith<$Res> {
  factory $TermsOfUseAcceptanceCopyWith(TermsOfUseAcceptance value,
          $Res Function(TermsOfUseAcceptance) then) =
      _$TermsOfUseAcceptanceCopyWithImpl<$Res, TermsOfUseAcceptance>;
  @useResult
  $Res call({int acceptedTermsReleaseNumber, int acceptedAppBuildNumber});
}

/// @nodoc
class _$TermsOfUseAcceptanceCopyWithImpl<$Res,
        $Val extends TermsOfUseAcceptance>
    implements $TermsOfUseAcceptanceCopyWith<$Res> {
  _$TermsOfUseAcceptanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedTermsReleaseNumber = null,
    Object? acceptedAppBuildNumber = null,
  }) {
    return _then(_value.copyWith(
      acceptedTermsReleaseNumber: null == acceptedTermsReleaseNumber
          ? _value.acceptedTermsReleaseNumber
          : acceptedTermsReleaseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      acceptedAppBuildNumber: null == acceptedAppBuildNumber
          ? _value.acceptedAppBuildNumber
          : acceptedAppBuildNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermsOfUseAcceptanceImplCopyWith<$Res>
    implements $TermsOfUseAcceptanceCopyWith<$Res> {
  factory _$$TermsOfUseAcceptanceImplCopyWith(_$TermsOfUseAcceptanceImpl value,
          $Res Function(_$TermsOfUseAcceptanceImpl) then) =
      __$$TermsOfUseAcceptanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int acceptedTermsReleaseNumber, int acceptedAppBuildNumber});
}

/// @nodoc
class __$$TermsOfUseAcceptanceImplCopyWithImpl<$Res>
    extends _$TermsOfUseAcceptanceCopyWithImpl<$Res, _$TermsOfUseAcceptanceImpl>
    implements _$$TermsOfUseAcceptanceImplCopyWith<$Res> {
  __$$TermsOfUseAcceptanceImplCopyWithImpl(_$TermsOfUseAcceptanceImpl _value,
      $Res Function(_$TermsOfUseAcceptanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedTermsReleaseNumber = null,
    Object? acceptedAppBuildNumber = null,
  }) {
    return _then(_$TermsOfUseAcceptanceImpl(
      acceptedTermsReleaseNumber: null == acceptedTermsReleaseNumber
          ? _value.acceptedTermsReleaseNumber
          : acceptedTermsReleaseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      acceptedAppBuildNumber: null == acceptedAppBuildNumber
          ? _value.acceptedAppBuildNumber
          : acceptedAppBuildNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsOfUseAcceptanceImpl implements _TermsOfUseAcceptance {
  const _$TermsOfUseAcceptanceImpl(
      {required this.acceptedTermsReleaseNumber,
      required this.acceptedAppBuildNumber});

  factory _$TermsOfUseAcceptanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsOfUseAcceptanceImplFromJson(json);

  @override
  final int acceptedTermsReleaseNumber;
  @override
  final int acceptedAppBuildNumber;

  @override
  String toString() {
    return 'TermsOfUseAcceptance(acceptedTermsReleaseNumber: $acceptedTermsReleaseNumber, acceptedAppBuildNumber: $acceptedAppBuildNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsOfUseAcceptanceImpl &&
            (identical(other.acceptedTermsReleaseNumber,
                    acceptedTermsReleaseNumber) ||
                other.acceptedTermsReleaseNumber ==
                    acceptedTermsReleaseNumber) &&
            (identical(other.acceptedAppBuildNumber, acceptedAppBuildNumber) ||
                other.acceptedAppBuildNumber == acceptedAppBuildNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, acceptedTermsReleaseNumber, acceptedAppBuildNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsOfUseAcceptanceImplCopyWith<_$TermsOfUseAcceptanceImpl>
      get copyWith =>
          __$$TermsOfUseAcceptanceImplCopyWithImpl<_$TermsOfUseAcceptanceImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsOfUseAcceptanceImplToJson(
      this,
    );
  }
}

abstract class _TermsOfUseAcceptance implements TermsOfUseAcceptance {
  const factory _TermsOfUseAcceptance(
      {required final int acceptedTermsReleaseNumber,
      required final int acceptedAppBuildNumber}) = _$TermsOfUseAcceptanceImpl;

  factory _TermsOfUseAcceptance.fromJson(Map<String, dynamic> json) =
      _$TermsOfUseAcceptanceImpl.fromJson;

  @override
  int get acceptedTermsReleaseNumber;
  @override
  int get acceptedAppBuildNumber;
  @override
  @JsonKey(ignore: true)
  _$$TermsOfUseAcceptanceImplCopyWith<_$TermsOfUseAcceptanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
