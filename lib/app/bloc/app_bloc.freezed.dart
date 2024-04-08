// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIsTermsAccepted,
    required TResult Function(AppPreferences updatedValue)
        appPreferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIsTermsAccepted,
    TResult? Function(AppPreferences updatedValue)? appPreferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIsTermsAccepted,
    TResult Function(AppPreferences updatedValue)? appPreferencesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppCheckIsTermsAccepted value)
        checkIsTermsAccepted,
    required TResult Function(AppPreferencesUpdated value)
        appPreferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppCheckIsTermsAccepted value)? checkIsTermsAccepted,
    TResult? Function(AppPreferencesUpdated value)? appPreferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppCheckIsTermsAccepted value)? checkIsTermsAccepted,
    TResult Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppCheckIsTermsAcceptedImplCopyWith<$Res> {
  factory _$$AppCheckIsTermsAcceptedImplCopyWith(
          _$AppCheckIsTermsAcceptedImpl value,
          $Res Function(_$AppCheckIsTermsAcceptedImpl) then) =
      __$$AppCheckIsTermsAcceptedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppCheckIsTermsAcceptedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppCheckIsTermsAcceptedImpl>
    implements _$$AppCheckIsTermsAcceptedImplCopyWith<$Res> {
  __$$AppCheckIsTermsAcceptedImplCopyWithImpl(
      _$AppCheckIsTermsAcceptedImpl _value,
      $Res Function(_$AppCheckIsTermsAcceptedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppCheckIsTermsAcceptedImpl implements AppCheckIsTermsAccepted {
  const _$AppCheckIsTermsAcceptedImpl();

  @override
  String toString() {
    return 'AppEvent.checkIsTermsAccepted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppCheckIsTermsAcceptedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIsTermsAccepted,
    required TResult Function(AppPreferences updatedValue)
        appPreferencesUpdated,
  }) {
    return checkIsTermsAccepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIsTermsAccepted,
    TResult? Function(AppPreferences updatedValue)? appPreferencesUpdated,
  }) {
    return checkIsTermsAccepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIsTermsAccepted,
    TResult Function(AppPreferences updatedValue)? appPreferencesUpdated,
    required TResult orElse(),
  }) {
    if (checkIsTermsAccepted != null) {
      return checkIsTermsAccepted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppCheckIsTermsAccepted value)
        checkIsTermsAccepted,
    required TResult Function(AppPreferencesUpdated value)
        appPreferencesUpdated,
  }) {
    return checkIsTermsAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppCheckIsTermsAccepted value)? checkIsTermsAccepted,
    TResult? Function(AppPreferencesUpdated value)? appPreferencesUpdated,
  }) {
    return checkIsTermsAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppCheckIsTermsAccepted value)? checkIsTermsAccepted,
    TResult Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    required TResult orElse(),
  }) {
    if (checkIsTermsAccepted != null) {
      return checkIsTermsAccepted(this);
    }
    return orElse();
  }
}

abstract class AppCheckIsTermsAccepted implements AppEvent {
  const factory AppCheckIsTermsAccepted() = _$AppCheckIsTermsAcceptedImpl;
}

/// @nodoc
abstract class _$$AppPreferencesUpdatedImplCopyWith<$Res> {
  factory _$$AppPreferencesUpdatedImplCopyWith(
          _$AppPreferencesUpdatedImpl value,
          $Res Function(_$AppPreferencesUpdatedImpl) then) =
      __$$AppPreferencesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppPreferences updatedValue});

  $AppPreferencesCopyWith<$Res> get updatedValue;
}

/// @nodoc
class __$$AppPreferencesUpdatedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppPreferencesUpdatedImpl>
    implements _$$AppPreferencesUpdatedImplCopyWith<$Res> {
  __$$AppPreferencesUpdatedImplCopyWithImpl(_$AppPreferencesUpdatedImpl _value,
      $Res Function(_$AppPreferencesUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedValue = null,
  }) {
    return _then(_$AppPreferencesUpdatedImpl(
      updatedValue: null == updatedValue
          ? _value.updatedValue
          : updatedValue // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppPreferencesCopyWith<$Res> get updatedValue {
    return $AppPreferencesCopyWith<$Res>(_value.updatedValue, (value) {
      return _then(_value.copyWith(updatedValue: value));
    });
  }
}

/// @nodoc

class _$AppPreferencesUpdatedImpl implements AppPreferencesUpdated {
  const _$AppPreferencesUpdatedImpl({required this.updatedValue});

  @override
  final AppPreferences updatedValue;

  @override
  String toString() {
    return 'AppEvent.appPreferencesUpdated(updatedValue: $updatedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPreferencesUpdatedImpl &&
            (identical(other.updatedValue, updatedValue) ||
                other.updatedValue == updatedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPreferencesUpdatedImplCopyWith<_$AppPreferencesUpdatedImpl>
      get copyWith => __$$AppPreferencesUpdatedImplCopyWithImpl<
          _$AppPreferencesUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIsTermsAccepted,
    required TResult Function(AppPreferences updatedValue)
        appPreferencesUpdated,
  }) {
    return appPreferencesUpdated(updatedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIsTermsAccepted,
    TResult? Function(AppPreferences updatedValue)? appPreferencesUpdated,
  }) {
    return appPreferencesUpdated?.call(updatedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIsTermsAccepted,
    TResult Function(AppPreferences updatedValue)? appPreferencesUpdated,
    required TResult orElse(),
  }) {
    if (appPreferencesUpdated != null) {
      return appPreferencesUpdated(updatedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppCheckIsTermsAccepted value)
        checkIsTermsAccepted,
    required TResult Function(AppPreferencesUpdated value)
        appPreferencesUpdated,
  }) {
    return appPreferencesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppCheckIsTermsAccepted value)? checkIsTermsAccepted,
    TResult? Function(AppPreferencesUpdated value)? appPreferencesUpdated,
  }) {
    return appPreferencesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppCheckIsTermsAccepted value)? checkIsTermsAccepted,
    TResult Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    required TResult orElse(),
  }) {
    if (appPreferencesUpdated != null) {
      return appPreferencesUpdated(this);
    }
    return orElse();
  }
}

abstract class AppPreferencesUpdated implements AppEvent {
  const factory AppPreferencesUpdated(
          {required final AppPreferences updatedValue}) =
      _$AppPreferencesUpdatedImpl;

  AppPreferences get updatedValue;
  @JsonKey(ignore: true)
  _$$AppPreferencesUpdatedImplCopyWith<_$AppPreferencesUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  AppMetadata get appMetadata => throw _privateConstructorUsedError;
  AppPreferences get appPreferences => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get needTermAcceptance => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AppMetadata appMetadata,
      AppPreferences appPreferences,
      bool isLoading,
      bool needTermAcceptance,
      Failure? failure});

  $AppMetadataCopyWith<$Res> get appMetadata;
  $AppPreferencesCopyWith<$Res> get appPreferences;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appMetadata = null,
    Object? appPreferences = null,
    Object? isLoading = null,
    Object? needTermAcceptance = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
      appPreferences: null == appPreferences
          ? _value.appPreferences
          : appPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      needTermAcceptance: null == needTermAcceptance
          ? _value.needTermAcceptance
          : needTermAcceptance // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetadataCopyWith<$Res> get appMetadata {
    return $AppMetadataCopyWith<$Res>(_value.appMetadata, (value) {
      return _then(_value.copyWith(appMetadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppPreferencesCopyWith<$Res> get appPreferences {
    return $AppPreferencesCopyWith<$Res>(_value.appPreferences, (value) {
      return _then(_value.copyWith(appPreferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppMetadata appMetadata,
      AppPreferences appPreferences,
      bool isLoading,
      bool needTermAcceptance,
      Failure? failure});

  @override
  $AppMetadataCopyWith<$Res> get appMetadata;
  @override
  $AppPreferencesCopyWith<$Res> get appPreferences;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appMetadata = null,
    Object? appPreferences = null,
    Object? isLoading = null,
    Object? needTermAcceptance = null,
    Object? failure = freezed,
  }) {
    return _then(_$AppStateImpl(
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
      appPreferences: null == appPreferences
          ? _value.appPreferences
          : appPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      needTermAcceptance: null == needTermAcceptance
          ? _value.needTermAcceptance
          : needTermAcceptance // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {required this.appMetadata,
      required this.appPreferences,
      this.isLoading = false,
      this.needTermAcceptance = false,
      this.failure});

  @override
  final AppMetadata appMetadata;
  @override
  final AppPreferences appPreferences;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool needTermAcceptance;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AppState(appMetadata: $appMetadata, appPreferences: $appPreferences, isLoading: $isLoading, needTermAcceptance: $needTermAcceptance, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.appMetadata, appMetadata) ||
                other.appMetadata == appMetadata) &&
            (identical(other.appPreferences, appPreferences) ||
                other.appPreferences == appPreferences) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.needTermAcceptance, needTermAcceptance) ||
                other.needTermAcceptance == needTermAcceptance) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appMetadata, appPreferences,
      isLoading, needTermAcceptance, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final AppMetadata appMetadata,
      required final AppPreferences appPreferences,
      final bool isLoading,
      final bool needTermAcceptance,
      final Failure? failure}) = _$AppStateImpl;

  @override
  AppMetadata get appMetadata;
  @override
  AppPreferences get appPreferences;
  @override
  bool get isLoading;
  @override
  bool get needTermAcceptance;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
