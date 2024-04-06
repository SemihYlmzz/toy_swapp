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
    required TResult Function(AppPreferences updatedAppPreferences)
        appPreferencesUpdated,
    required TResult Function(AppMetadata updatedAppMetadata)
        appMetadataUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppPreferences updatedAppPreferences)?
        appPreferencesUpdated,
    TResult? Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppPreferences updatedAppPreferences)?
        appPreferencesUpdated,
    TResult Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppPreferencesUpdated value)
        appPreferencesUpdated,
    required TResult Function(AppMetadataUpdated value) appMetadataUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    TResult? Function(AppMetadataUpdated value)? appMetadataUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    TResult Function(AppMetadataUpdated value)? appMetadataUpdated,
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
abstract class _$$AppPreferencesUpdatedImplCopyWith<$Res> {
  factory _$$AppPreferencesUpdatedImplCopyWith(
          _$AppPreferencesUpdatedImpl value,
          $Res Function(_$AppPreferencesUpdatedImpl) then) =
      __$$AppPreferencesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppPreferences updatedAppPreferences});

  $AppPreferencesCopyWith<$Res> get updatedAppPreferences;
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
    Object? updatedAppPreferences = null,
  }) {
    return _then(_$AppPreferencesUpdatedImpl(
      null == updatedAppPreferences
          ? _value.updatedAppPreferences
          : updatedAppPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppPreferencesCopyWith<$Res> get updatedAppPreferences {
    return $AppPreferencesCopyWith<$Res>(_value.updatedAppPreferences, (value) {
      return _then(_value.copyWith(updatedAppPreferences: value));
    });
  }
}

/// @nodoc

class _$AppPreferencesUpdatedImpl implements AppPreferencesUpdated {
  _$AppPreferencesUpdatedImpl(this.updatedAppPreferences);

  @override
  final AppPreferences updatedAppPreferences;

  @override
  String toString() {
    return 'AppEvent.appPreferencesUpdated(updatedAppPreferences: $updatedAppPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPreferencesUpdatedImpl &&
            (identical(other.updatedAppPreferences, updatedAppPreferences) ||
                other.updatedAppPreferences == updatedAppPreferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedAppPreferences);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPreferencesUpdatedImplCopyWith<_$AppPreferencesUpdatedImpl>
      get copyWith => __$$AppPreferencesUpdatedImplCopyWithImpl<
          _$AppPreferencesUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppPreferences updatedAppPreferences)
        appPreferencesUpdated,
    required TResult Function(AppMetadata updatedAppMetadata)
        appMetadataUpdated,
  }) {
    return appPreferencesUpdated(updatedAppPreferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppPreferences updatedAppPreferences)?
        appPreferencesUpdated,
    TResult? Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
  }) {
    return appPreferencesUpdated?.call(updatedAppPreferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppPreferences updatedAppPreferences)?
        appPreferencesUpdated,
    TResult Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (appPreferencesUpdated != null) {
      return appPreferencesUpdated(updatedAppPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppPreferencesUpdated value)
        appPreferencesUpdated,
    required TResult Function(AppMetadataUpdated value) appMetadataUpdated,
  }) {
    return appPreferencesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    TResult? Function(AppMetadataUpdated value)? appMetadataUpdated,
  }) {
    return appPreferencesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    TResult Function(AppMetadataUpdated value)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (appPreferencesUpdated != null) {
      return appPreferencesUpdated(this);
    }
    return orElse();
  }
}

abstract class AppPreferencesUpdated implements AppEvent {
  factory AppPreferencesUpdated(final AppPreferences updatedAppPreferences) =
      _$AppPreferencesUpdatedImpl;

  AppPreferences get updatedAppPreferences;
  @JsonKey(ignore: true)
  _$$AppPreferencesUpdatedImplCopyWith<_$AppPreferencesUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppMetadataUpdatedImplCopyWith<$Res> {
  factory _$$AppMetadataUpdatedImplCopyWith(_$AppMetadataUpdatedImpl value,
          $Res Function(_$AppMetadataUpdatedImpl) then) =
      __$$AppMetadataUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppMetadata updatedAppMetadata});

  $AppMetadataCopyWith<$Res> get updatedAppMetadata;
}

/// @nodoc
class __$$AppMetadataUpdatedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppMetadataUpdatedImpl>
    implements _$$AppMetadataUpdatedImplCopyWith<$Res> {
  __$$AppMetadataUpdatedImplCopyWithImpl(_$AppMetadataUpdatedImpl _value,
      $Res Function(_$AppMetadataUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAppMetadata = null,
  }) {
    return _then(_$AppMetadataUpdatedImpl(
      null == updatedAppMetadata
          ? _value.updatedAppMetadata
          : updatedAppMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetadataCopyWith<$Res> get updatedAppMetadata {
    return $AppMetadataCopyWith<$Res>(_value.updatedAppMetadata, (value) {
      return _then(_value.copyWith(updatedAppMetadata: value));
    });
  }
}

/// @nodoc

class _$AppMetadataUpdatedImpl implements AppMetadataUpdated {
  _$AppMetadataUpdatedImpl(this.updatedAppMetadata);

  @override
  final AppMetadata updatedAppMetadata;

  @override
  String toString() {
    return 'AppEvent.appMetadataUpdated(updatedAppMetadata: $updatedAppMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppMetadataUpdatedImpl &&
            (identical(other.updatedAppMetadata, updatedAppMetadata) ||
                other.updatedAppMetadata == updatedAppMetadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedAppMetadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppMetadataUpdatedImplCopyWith<_$AppMetadataUpdatedImpl> get copyWith =>
      __$$AppMetadataUpdatedImplCopyWithImpl<_$AppMetadataUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppPreferences updatedAppPreferences)
        appPreferencesUpdated,
    required TResult Function(AppMetadata updatedAppMetadata)
        appMetadataUpdated,
  }) {
    return appMetadataUpdated(updatedAppMetadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppPreferences updatedAppPreferences)?
        appPreferencesUpdated,
    TResult? Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
  }) {
    return appMetadataUpdated?.call(updatedAppMetadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppPreferences updatedAppPreferences)?
        appPreferencesUpdated,
    TResult Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (appMetadataUpdated != null) {
      return appMetadataUpdated(updatedAppMetadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppPreferencesUpdated value)
        appPreferencesUpdated,
    required TResult Function(AppMetadataUpdated value) appMetadataUpdated,
  }) {
    return appMetadataUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    TResult? Function(AppMetadataUpdated value)? appMetadataUpdated,
  }) {
    return appMetadataUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppPreferencesUpdated value)? appPreferencesUpdated,
    TResult Function(AppMetadataUpdated value)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (appMetadataUpdated != null) {
      return appMetadataUpdated(this);
    }
    return orElse();
  }
}

abstract class AppMetadataUpdated implements AppEvent {
  factory AppMetadataUpdated(final AppMetadata updatedAppMetadata) =
      _$AppMetadataUpdatedImpl;

  AppMetadata get updatedAppMetadata;
  @JsonKey(ignore: true)
  _$$AppMetadataUpdatedImplCopyWith<_$AppMetadataUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  AppPreferences get appPreferences => throw _privateConstructorUsedError;
  AppMetadata get appMetadata => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

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
      {AppPreferences appPreferences,
      AppMetadata appMetadata,
      Failure? failure,
      bool isLoading});

  $AppPreferencesCopyWith<$Res> get appPreferences;
  $AppMetadataCopyWith<$Res> get appMetadata;
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
    Object? appPreferences = null,
    Object? appMetadata = null,
    Object? failure = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      appPreferences: null == appPreferences
          ? _value.appPreferences
          : appPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppPreferencesCopyWith<$Res> get appPreferences {
    return $AppPreferencesCopyWith<$Res>(_value.appPreferences, (value) {
      return _then(_value.copyWith(appPreferences: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetadataCopyWith<$Res> get appMetadata {
    return $AppMetadataCopyWith<$Res>(_value.appMetadata, (value) {
      return _then(_value.copyWith(appMetadata: value) as $Val);
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
      {AppPreferences appPreferences,
      AppMetadata appMetadata,
      Failure? failure,
      bool isLoading});

  @override
  $AppPreferencesCopyWith<$Res> get appPreferences;
  @override
  $AppMetadataCopyWith<$Res> get appMetadata;
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
    Object? appPreferences = null,
    Object? appMetadata = null,
    Object? failure = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$AppStateImpl(
      appPreferences: null == appPreferences
          ? _value.appPreferences
          : appPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {required this.appPreferences,
      required this.appMetadata,
      this.failure,
      this.isLoading = false});

  @override
  final AppPreferences appPreferences;
  @override
  final AppMetadata appMetadata;
  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AppState(appPreferences: $appPreferences, appMetadata: $appMetadata, failure: $failure, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.appPreferences, appPreferences) ||
                other.appPreferences == appPreferences) &&
            (identical(other.appMetadata, appMetadata) ||
                other.appMetadata == appMetadata) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appPreferences, appMetadata, failure, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final AppPreferences appPreferences,
      required final AppMetadata appMetadata,
      final Failure? failure,
      final bool isLoading}) = _$AppStateImpl;

  @override
  AppPreferences get appPreferences;
  @override
  AppMetadata get appMetadata;
  @override
  Failure? get failure;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
