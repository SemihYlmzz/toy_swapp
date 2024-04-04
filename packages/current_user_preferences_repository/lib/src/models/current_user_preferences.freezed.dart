// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentUserPreferences _$CurrentUserPreferencesFromJson(
    Map<String, dynamic> json) {
  return _CurrentUserPreferences.fromJson(json);
}

/// @nodoc
mixin _$CurrentUserPreferences {
  bool get isVibratable => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get isTermsOfUseAccepted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUserPreferencesCopyWith<CurrentUserPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserPreferencesCopyWith<$Res> {
  factory $CurrentUserPreferencesCopyWith(CurrentUserPreferences value,
          $Res Function(CurrentUserPreferences) then) =
      _$CurrentUserPreferencesCopyWithImpl<$Res, CurrentUserPreferences>;
  @useResult
  $Res call(
      {bool isVibratable,
      Language language,
      ThemeMode themeMode,
      bool isTermsOfUseAccepted});
}

/// @nodoc
class _$CurrentUserPreferencesCopyWithImpl<$Res,
        $Val extends CurrentUserPreferences>
    implements $CurrentUserPreferencesCopyWith<$Res> {
  _$CurrentUserPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVibratable = null,
    Object? language = null,
    Object? themeMode = null,
    Object? isTermsOfUseAccepted = null,
  }) {
    return _then(_value.copyWith(
      isVibratable: null == isVibratable
          ? _value.isVibratable
          : isVibratable // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isTermsOfUseAccepted: null == isTermsOfUseAccepted
          ? _value.isTermsOfUseAccepted
          : isTermsOfUseAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUserPreferencesImplCopyWith<$Res>
    implements $CurrentUserPreferencesCopyWith<$Res> {
  factory _$$CurrentUserPreferencesImplCopyWith(
          _$CurrentUserPreferencesImpl value,
          $Res Function(_$CurrentUserPreferencesImpl) then) =
      __$$CurrentUserPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isVibratable,
      Language language,
      ThemeMode themeMode,
      bool isTermsOfUseAccepted});
}

/// @nodoc
class __$$CurrentUserPreferencesImplCopyWithImpl<$Res>
    extends _$CurrentUserPreferencesCopyWithImpl<$Res,
        _$CurrentUserPreferencesImpl>
    implements _$$CurrentUserPreferencesImplCopyWith<$Res> {
  __$$CurrentUserPreferencesImplCopyWithImpl(
      _$CurrentUserPreferencesImpl _value,
      $Res Function(_$CurrentUserPreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVibratable = null,
    Object? language = null,
    Object? themeMode = null,
    Object? isTermsOfUseAccepted = null,
  }) {
    return _then(_$CurrentUserPreferencesImpl(
      isVibratable: null == isVibratable
          ? _value.isVibratable
          : isVibratable // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isTermsOfUseAccepted: null == isTermsOfUseAccepted
          ? _value.isTermsOfUseAccepted
          : isTermsOfUseAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUserPreferencesImpl implements _CurrentUserPreferences {
  const _$CurrentUserPreferencesImpl(
      {this.isVibratable = true,
      this.language = Language.deviceLanguage,
      this.themeMode = ThemeMode.system,
      this.isTermsOfUseAccepted = false});

  factory _$CurrentUserPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUserPreferencesImplFromJson(json);

  @override
  @JsonKey()
  final bool isVibratable;
  @override
  @JsonKey()
  final Language language;
  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final bool isTermsOfUseAccepted;

  @override
  String toString() {
    return 'CurrentUserPreferences(isVibratable: $isVibratable, language: $language, themeMode: $themeMode, isTermsOfUseAccepted: $isTermsOfUseAccepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserPreferencesImpl &&
            (identical(other.isVibratable, isVibratable) ||
                other.isVibratable == isVibratable) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.isTermsOfUseAccepted, isTermsOfUseAccepted) ||
                other.isTermsOfUseAccepted == isTermsOfUseAccepted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isVibratable, language, themeMode, isTermsOfUseAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserPreferencesImplCopyWith<_$CurrentUserPreferencesImpl>
      get copyWith => __$$CurrentUserPreferencesImplCopyWithImpl<
          _$CurrentUserPreferencesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUserPreferencesImplToJson(
      this,
    );
  }
}

abstract class _CurrentUserPreferences implements CurrentUserPreferences {
  const factory _CurrentUserPreferences(
      {final bool isVibratable,
      final Language language,
      final ThemeMode themeMode,
      final bool isTermsOfUseAccepted}) = _$CurrentUserPreferencesImpl;

  factory _CurrentUserPreferences.fromJson(Map<String, dynamic> json) =
      _$CurrentUserPreferencesImpl.fromJson;

  @override
  bool get isVibratable;
  @override
  Language get language;
  @override
  ThemeMode get themeMode;
  @override
  bool get isTermsOfUseAccepted;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUserPreferencesImplCopyWith<_$CurrentUserPreferencesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
