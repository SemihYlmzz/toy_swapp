// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppPreferences _$AppPreferencesFromJson(Map<String, dynamic> json) {
  return _AppPreferences.fromJson(json);
}

/// @nodoc
mixin _$AppPreferences {
  TermsOfUseAcceptance? get termsOfUseAcceptance =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppPreferencesCopyWith<AppPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPreferencesCopyWith<$Res> {
  factory $AppPreferencesCopyWith(
          AppPreferences value, $Res Function(AppPreferences) then) =
      _$AppPreferencesCopyWithImpl<$Res, AppPreferences>;
  @useResult
  $Res call({TermsOfUseAcceptance? termsOfUseAcceptance});

  $TermsOfUseAcceptanceCopyWith<$Res>? get termsOfUseAcceptance;
}

/// @nodoc
class _$AppPreferencesCopyWithImpl<$Res, $Val extends AppPreferences>
    implements $AppPreferencesCopyWith<$Res> {
  _$AppPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsOfUseAcceptance = freezed,
  }) {
    return _then(_value.copyWith(
      termsOfUseAcceptance: freezed == termsOfUseAcceptance
          ? _value.termsOfUseAcceptance
          : termsOfUseAcceptance // ignore: cast_nullable_to_non_nullable
              as TermsOfUseAcceptance?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TermsOfUseAcceptanceCopyWith<$Res>? get termsOfUseAcceptance {
    if (_value.termsOfUseAcceptance == null) {
      return null;
    }

    return $TermsOfUseAcceptanceCopyWith<$Res>(_value.termsOfUseAcceptance!,
        (value) {
      return _then(_value.copyWith(termsOfUseAcceptance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppPreferencesImplCopyWith<$Res>
    implements $AppPreferencesCopyWith<$Res> {
  factory _$$AppPreferencesImplCopyWith(_$AppPreferencesImpl value,
          $Res Function(_$AppPreferencesImpl) then) =
      __$$AppPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TermsOfUseAcceptance? termsOfUseAcceptance});

  @override
  $TermsOfUseAcceptanceCopyWith<$Res>? get termsOfUseAcceptance;
}

/// @nodoc
class __$$AppPreferencesImplCopyWithImpl<$Res>
    extends _$AppPreferencesCopyWithImpl<$Res, _$AppPreferencesImpl>
    implements _$$AppPreferencesImplCopyWith<$Res> {
  __$$AppPreferencesImplCopyWithImpl(
      _$AppPreferencesImpl _value, $Res Function(_$AppPreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsOfUseAcceptance = freezed,
  }) {
    return _then(_$AppPreferencesImpl(
      termsOfUseAcceptance: freezed == termsOfUseAcceptance
          ? _value.termsOfUseAcceptance
          : termsOfUseAcceptance // ignore: cast_nullable_to_non_nullable
              as TermsOfUseAcceptance?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppPreferencesImpl implements _AppPreferences {
  const _$AppPreferencesImpl({this.termsOfUseAcceptance});

  factory _$AppPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppPreferencesImplFromJson(json);

  @override
  final TermsOfUseAcceptance? termsOfUseAcceptance;

  @override
  String toString() {
    return 'AppPreferences(termsOfUseAcceptance: $termsOfUseAcceptance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPreferencesImpl &&
            (identical(other.termsOfUseAcceptance, termsOfUseAcceptance) ||
                other.termsOfUseAcceptance == termsOfUseAcceptance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, termsOfUseAcceptance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPreferencesImplCopyWith<_$AppPreferencesImpl> get copyWith =>
      __$$AppPreferencesImplCopyWithImpl<_$AppPreferencesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppPreferencesImplToJson(
      this,
    );
  }
}

abstract class _AppPreferences implements AppPreferences {
  const factory _AppPreferences(
          {final TermsOfUseAcceptance? termsOfUseAcceptance}) =
      _$AppPreferencesImpl;

  factory _AppPreferences.fromJson(Map<String, dynamic> json) =
      _$AppPreferencesImpl.fromJson;

  @override
  TermsOfUseAcceptance? get termsOfUseAcceptance;
  @override
  @JsonKey(ignore: true)
  _$$AppPreferencesImplCopyWith<_$AppPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
