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
    required TResult Function() initializeCurrentUserPreferences,
    required TResult Function() resetAppPreferences,
    required TResult Function(
            CurrentUserPreferences updatedCurrentUserPreferences)
        currentDevicePreferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCurrentUserPreferences,
    TResult? Function()? resetAppPreferences,
    TResult? Function(CurrentUserPreferences updatedCurrentUserPreferences)?
        currentDevicePreferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCurrentUserPreferences,
    TResult Function()? resetAppPreferences,
    TResult Function(CurrentUserPreferences updatedCurrentUserPreferences)?
        currentDevicePreferencesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitializeCurrentUserPreferences value)
        initializeCurrentUserPreferences,
    required TResult Function(AppResetAppPreferences value) resetAppPreferences,
    required TResult Function(AppCurrentDevicePreferencesUpdated value)
        currentDevicePreferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitializeCurrentUserPreferences value)?
        initializeCurrentUserPreferences,
    TResult? Function(AppResetAppPreferences value)? resetAppPreferences,
    TResult? Function(AppCurrentDevicePreferencesUpdated value)?
        currentDevicePreferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitializeCurrentUserPreferences value)?
        initializeCurrentUserPreferences,
    TResult Function(AppResetAppPreferences value)? resetAppPreferences,
    TResult Function(AppCurrentDevicePreferencesUpdated value)?
        currentDevicePreferencesUpdated,
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
abstract class _$$AppInitializeCurrentUserPreferencesImplCopyWith<$Res> {
  factory _$$AppInitializeCurrentUserPreferencesImplCopyWith(
          _$AppInitializeCurrentUserPreferencesImpl value,
          $Res Function(_$AppInitializeCurrentUserPreferencesImpl) then) =
      __$$AppInitializeCurrentUserPreferencesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitializeCurrentUserPreferencesImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res,
        _$AppInitializeCurrentUserPreferencesImpl>
    implements _$$AppInitializeCurrentUserPreferencesImplCopyWith<$Res> {
  __$$AppInitializeCurrentUserPreferencesImplCopyWithImpl(
      _$AppInitializeCurrentUserPreferencesImpl _value,
      $Res Function(_$AppInitializeCurrentUserPreferencesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInitializeCurrentUserPreferencesImpl
    implements AppInitializeCurrentUserPreferences {
  _$AppInitializeCurrentUserPreferencesImpl();

  @override
  String toString() {
    return 'AppEvent.initializeCurrentUserPreferences()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInitializeCurrentUserPreferencesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCurrentUserPreferences,
    required TResult Function() resetAppPreferences,
    required TResult Function(
            CurrentUserPreferences updatedCurrentUserPreferences)
        currentDevicePreferencesUpdated,
  }) {
    return initializeCurrentUserPreferences();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCurrentUserPreferences,
    TResult? Function()? resetAppPreferences,
    TResult? Function(CurrentUserPreferences updatedCurrentUserPreferences)?
        currentDevicePreferencesUpdated,
  }) {
    return initializeCurrentUserPreferences?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCurrentUserPreferences,
    TResult Function()? resetAppPreferences,
    TResult Function(CurrentUserPreferences updatedCurrentUserPreferences)?
        currentDevicePreferencesUpdated,
    required TResult orElse(),
  }) {
    if (initializeCurrentUserPreferences != null) {
      return initializeCurrentUserPreferences();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitializeCurrentUserPreferences value)
        initializeCurrentUserPreferences,
    required TResult Function(AppResetAppPreferences value) resetAppPreferences,
    required TResult Function(AppCurrentDevicePreferencesUpdated value)
        currentDevicePreferencesUpdated,
  }) {
    return initializeCurrentUserPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitializeCurrentUserPreferences value)?
        initializeCurrentUserPreferences,
    TResult? Function(AppResetAppPreferences value)? resetAppPreferences,
    TResult? Function(AppCurrentDevicePreferencesUpdated value)?
        currentDevicePreferencesUpdated,
  }) {
    return initializeCurrentUserPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitializeCurrentUserPreferences value)?
        initializeCurrentUserPreferences,
    TResult Function(AppResetAppPreferences value)? resetAppPreferences,
    TResult Function(AppCurrentDevicePreferencesUpdated value)?
        currentDevicePreferencesUpdated,
    required TResult orElse(),
  }) {
    if (initializeCurrentUserPreferences != null) {
      return initializeCurrentUserPreferences(this);
    }
    return orElse();
  }
}

abstract class AppInitializeCurrentUserPreferences implements AppEvent {
  factory AppInitializeCurrentUserPreferences() =
      _$AppInitializeCurrentUserPreferencesImpl;
}

/// @nodoc
abstract class _$$AppResetAppPreferencesImplCopyWith<$Res> {
  factory _$$AppResetAppPreferencesImplCopyWith(
          _$AppResetAppPreferencesImpl value,
          $Res Function(_$AppResetAppPreferencesImpl) then) =
      __$$AppResetAppPreferencesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppResetAppPreferencesImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppResetAppPreferencesImpl>
    implements _$$AppResetAppPreferencesImplCopyWith<$Res> {
  __$$AppResetAppPreferencesImplCopyWithImpl(
      _$AppResetAppPreferencesImpl _value,
      $Res Function(_$AppResetAppPreferencesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppResetAppPreferencesImpl implements AppResetAppPreferences {
  _$AppResetAppPreferencesImpl();

  @override
  String toString() {
    return 'AppEvent.resetAppPreferences()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppResetAppPreferencesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCurrentUserPreferences,
    required TResult Function() resetAppPreferences,
    required TResult Function(
            CurrentUserPreferences updatedCurrentUserPreferences)
        currentDevicePreferencesUpdated,
  }) {
    return resetAppPreferences();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCurrentUserPreferences,
    TResult? Function()? resetAppPreferences,
    TResult? Function(CurrentUserPreferences updatedCurrentUserPreferences)?
        currentDevicePreferencesUpdated,
  }) {
    return resetAppPreferences?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCurrentUserPreferences,
    TResult Function()? resetAppPreferences,
    TResult Function(CurrentUserPreferences updatedCurrentUserPreferences)?
        currentDevicePreferencesUpdated,
    required TResult orElse(),
  }) {
    if (resetAppPreferences != null) {
      return resetAppPreferences();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitializeCurrentUserPreferences value)
        initializeCurrentUserPreferences,
    required TResult Function(AppResetAppPreferences value) resetAppPreferences,
    required TResult Function(AppCurrentDevicePreferencesUpdated value)
        currentDevicePreferencesUpdated,
  }) {
    return resetAppPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitializeCurrentUserPreferences value)?
        initializeCurrentUserPreferences,
    TResult? Function(AppResetAppPreferences value)? resetAppPreferences,
    TResult? Function(AppCurrentDevicePreferencesUpdated value)?
        currentDevicePreferencesUpdated,
  }) {
    return resetAppPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitializeCurrentUserPreferences value)?
        initializeCurrentUserPreferences,
    TResult Function(AppResetAppPreferences value)? resetAppPreferences,
    TResult Function(AppCurrentDevicePreferencesUpdated value)?
        currentDevicePreferencesUpdated,
    required TResult orElse(),
  }) {
    if (resetAppPreferences != null) {
      return resetAppPreferences(this);
    }
    return orElse();
  }
}

abstract class AppResetAppPreferences implements AppEvent {
  factory AppResetAppPreferences() = _$AppResetAppPreferencesImpl;
}

/// @nodoc
abstract class _$$AppCurrentDevicePreferencesUpdatedImplCopyWith<$Res> {
  factory _$$AppCurrentDevicePreferencesUpdatedImplCopyWith(
          _$AppCurrentDevicePreferencesUpdatedImpl value,
          $Res Function(_$AppCurrentDevicePreferencesUpdatedImpl) then) =
      __$$AppCurrentDevicePreferencesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentUserPreferences updatedCurrentUserPreferences});

  $CurrentUserPreferencesCopyWith<$Res> get updatedCurrentUserPreferences;
}

/// @nodoc
class __$$AppCurrentDevicePreferencesUpdatedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res,
        _$AppCurrentDevicePreferencesUpdatedImpl>
    implements _$$AppCurrentDevicePreferencesUpdatedImplCopyWith<$Res> {
  __$$AppCurrentDevicePreferencesUpdatedImplCopyWithImpl(
      _$AppCurrentDevicePreferencesUpdatedImpl _value,
      $Res Function(_$AppCurrentDevicePreferencesUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedCurrentUserPreferences = null,
  }) {
    return _then(_$AppCurrentDevicePreferencesUpdatedImpl(
      null == updatedCurrentUserPreferences
          ? _value.updatedCurrentUserPreferences
          : updatedCurrentUserPreferences // ignore: cast_nullable_to_non_nullable
              as CurrentUserPreferences,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentUserPreferencesCopyWith<$Res> get updatedCurrentUserPreferences {
    return $CurrentUserPreferencesCopyWith<$Res>(
        _value.updatedCurrentUserPreferences, (value) {
      return _then(_value.copyWith(updatedCurrentUserPreferences: value));
    });
  }
}

/// @nodoc

class _$AppCurrentDevicePreferencesUpdatedImpl
    implements AppCurrentDevicePreferencesUpdated {
  _$AppCurrentDevicePreferencesUpdatedImpl(this.updatedCurrentUserPreferences);

  @override
  final CurrentUserPreferences updatedCurrentUserPreferences;

  @override
  String toString() {
    return 'AppEvent.currentDevicePreferencesUpdated(updatedCurrentUserPreferences: $updatedCurrentUserPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppCurrentDevicePreferencesUpdatedImpl &&
            (identical(other.updatedCurrentUserPreferences,
                    updatedCurrentUserPreferences) ||
                other.updatedCurrentUserPreferences ==
                    updatedCurrentUserPreferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedCurrentUserPreferences);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppCurrentDevicePreferencesUpdatedImplCopyWith<
          _$AppCurrentDevicePreferencesUpdatedImpl>
      get copyWith => __$$AppCurrentDevicePreferencesUpdatedImplCopyWithImpl<
          _$AppCurrentDevicePreferencesUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCurrentUserPreferences,
    required TResult Function() resetAppPreferences,
    required TResult Function(
            CurrentUserPreferences updatedCurrentUserPreferences)
        currentDevicePreferencesUpdated,
  }) {
    return currentDevicePreferencesUpdated(updatedCurrentUserPreferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCurrentUserPreferences,
    TResult? Function()? resetAppPreferences,
    TResult? Function(CurrentUserPreferences updatedCurrentUserPreferences)?
        currentDevicePreferencesUpdated,
  }) {
    return currentDevicePreferencesUpdated?.call(updatedCurrentUserPreferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCurrentUserPreferences,
    TResult Function()? resetAppPreferences,
    TResult Function(CurrentUserPreferences updatedCurrentUserPreferences)?
        currentDevicePreferencesUpdated,
    required TResult orElse(),
  }) {
    if (currentDevicePreferencesUpdated != null) {
      return currentDevicePreferencesUpdated(updatedCurrentUserPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitializeCurrentUserPreferences value)
        initializeCurrentUserPreferences,
    required TResult Function(AppResetAppPreferences value) resetAppPreferences,
    required TResult Function(AppCurrentDevicePreferencesUpdated value)
        currentDevicePreferencesUpdated,
  }) {
    return currentDevicePreferencesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitializeCurrentUserPreferences value)?
        initializeCurrentUserPreferences,
    TResult? Function(AppResetAppPreferences value)? resetAppPreferences,
    TResult? Function(AppCurrentDevicePreferencesUpdated value)?
        currentDevicePreferencesUpdated,
  }) {
    return currentDevicePreferencesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitializeCurrentUserPreferences value)?
        initializeCurrentUserPreferences,
    TResult Function(AppResetAppPreferences value)? resetAppPreferences,
    TResult Function(AppCurrentDevicePreferencesUpdated value)?
        currentDevicePreferencesUpdated,
    required TResult orElse(),
  }) {
    if (currentDevicePreferencesUpdated != null) {
      return currentDevicePreferencesUpdated(this);
    }
    return orElse();
  }
}

abstract class AppCurrentDevicePreferencesUpdated implements AppEvent {
  factory AppCurrentDevicePreferencesUpdated(
          final CurrentUserPreferences updatedCurrentUserPreferences) =
      _$AppCurrentDevicePreferencesUpdatedImpl;

  CurrentUserPreferences get updatedCurrentUserPreferences;
  @JsonKey(ignore: true)
  _$$AppCurrentDevicePreferencesUpdatedImplCopyWith<
          _$AppCurrentDevicePreferencesUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  CurrentUserPreferences? get currentUserPreferences =>
      throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isInitError => throw _privateConstructorUsedError;

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
      {CurrentUserPreferences? currentUserPreferences,
      Failure? failure,
      bool isLoading,
      bool isInitError});

  $CurrentUserPreferencesCopyWith<$Res>? get currentUserPreferences;
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
    Object? currentUserPreferences = freezed,
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isInitError = null,
  }) {
    return _then(_value.copyWith(
      currentUserPreferences: freezed == currentUserPreferences
          ? _value.currentUserPreferences
          : currentUserPreferences // ignore: cast_nullable_to_non_nullable
              as CurrentUserPreferences?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitError: null == isInitError
          ? _value.isInitError
          : isInitError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentUserPreferencesCopyWith<$Res>? get currentUserPreferences {
    if (_value.currentUserPreferences == null) {
      return null;
    }

    return $CurrentUserPreferencesCopyWith<$Res>(_value.currentUserPreferences!,
        (value) {
      return _then(_value.copyWith(currentUserPreferences: value) as $Val);
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
      {CurrentUserPreferences? currentUserPreferences,
      Failure? failure,
      bool isLoading,
      bool isInitError});

  @override
  $CurrentUserPreferencesCopyWith<$Res>? get currentUserPreferences;
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
    Object? currentUserPreferences = freezed,
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isInitError = null,
  }) {
    return _then(_$AppStateImpl(
      currentUserPreferences: freezed == currentUserPreferences
          ? _value.currentUserPreferences
          : currentUserPreferences // ignore: cast_nullable_to_non_nullable
              as CurrentUserPreferences?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitError: null == isInitError
          ? _value.isInitError
          : isInitError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {this.currentUserPreferences,
      this.failure,
      this.isLoading = false,
      this.isInitError = false});

  @override
  final CurrentUserPreferences? currentUserPreferences;
  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isInitError;

  @override
  String toString() {
    return 'AppState(currentUserPreferences: $currentUserPreferences, failure: $failure, isLoading: $isLoading, isInitError: $isInitError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.currentUserPreferences, currentUserPreferences) ||
                other.currentUserPreferences == currentUserPreferences) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isInitError, isInitError) ||
                other.isInitError == isInitError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentUserPreferences, failure, isLoading, isInitError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final CurrentUserPreferences? currentUserPreferences,
      final Failure? failure,
      final bool isLoading,
      final bool isInitError}) = _$AppStateImpl;

  @override
  CurrentUserPreferences? get currentUserPreferences;
  @override
  Failure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isInitError;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
