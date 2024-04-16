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
  AppPreferences get appPreferences => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppPreferences appPreferences)
        updateAppPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppPreferences appPreferences)? updateAppPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppPreferences appPreferences)? updateAppPreferences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppUpdateAppPreferences value)
        updateAppPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppUpdateAppPreferences value)? updateAppPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppUpdateAppPreferences value)? updateAppPreferences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppEventCopyWith<AppEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
  @useResult
  $Res call({AppPreferences appPreferences});

  $AppPreferencesCopyWith<$Res> get appPreferences;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appPreferences = null,
  }) {
    return _then(_value.copyWith(
      appPreferences: null == appPreferences
          ? _value.appPreferences
          : appPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
    ) as $Val);
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
abstract class _$$AppUpdateAppPreferencesImplCopyWith<$Res>
    implements $AppEventCopyWith<$Res> {
  factory _$$AppUpdateAppPreferencesImplCopyWith(
          _$AppUpdateAppPreferencesImpl value,
          $Res Function(_$AppUpdateAppPreferencesImpl) then) =
      __$$AppUpdateAppPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppPreferences appPreferences});

  @override
  $AppPreferencesCopyWith<$Res> get appPreferences;
}

/// @nodoc
class __$$AppUpdateAppPreferencesImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppUpdateAppPreferencesImpl>
    implements _$$AppUpdateAppPreferencesImplCopyWith<$Res> {
  __$$AppUpdateAppPreferencesImplCopyWithImpl(
      _$AppUpdateAppPreferencesImpl _value,
      $Res Function(_$AppUpdateAppPreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appPreferences = null,
  }) {
    return _then(_$AppUpdateAppPreferencesImpl(
      null == appPreferences
          ? _value.appPreferences
          : appPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
    ));
  }
}

/// @nodoc

class _$AppUpdateAppPreferencesImpl implements AppUpdateAppPreferences {
  const _$AppUpdateAppPreferencesImpl(this.appPreferences);

  @override
  final AppPreferences appPreferences;

  @override
  String toString() {
    return 'AppEvent.updateAppPreferences(appPreferences: $appPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUpdateAppPreferencesImpl &&
            (identical(other.appPreferences, appPreferences) ||
                other.appPreferences == appPreferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appPreferences);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUpdateAppPreferencesImplCopyWith<_$AppUpdateAppPreferencesImpl>
      get copyWith => __$$AppUpdateAppPreferencesImplCopyWithImpl<
          _$AppUpdateAppPreferencesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppPreferences appPreferences)
        updateAppPreferences,
  }) {
    return updateAppPreferences(appPreferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppPreferences appPreferences)? updateAppPreferences,
  }) {
    return updateAppPreferences?.call(appPreferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppPreferences appPreferences)? updateAppPreferences,
    required TResult orElse(),
  }) {
    if (updateAppPreferences != null) {
      return updateAppPreferences(appPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppUpdateAppPreferences value)
        updateAppPreferences,
  }) {
    return updateAppPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppUpdateAppPreferences value)? updateAppPreferences,
  }) {
    return updateAppPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppUpdateAppPreferences value)? updateAppPreferences,
    required TResult orElse(),
  }) {
    if (updateAppPreferences != null) {
      return updateAppPreferences(this);
    }
    return orElse();
  }
}

abstract class AppUpdateAppPreferences implements AppEvent {
  const factory AppUpdateAppPreferences(final AppPreferences appPreferences) =
      _$AppUpdateAppPreferencesImpl;

  @override
  AppPreferences get appPreferences;
  @override
  @JsonKey(ignore: true)
  _$$AppUpdateAppPreferencesImplCopyWith<_$AppUpdateAppPreferencesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  AppPreferences get appPreferences => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
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
  $Res call({AppPreferences appPreferences, bool isLoading, Failure? failure});

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
    Object? appPreferences = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      appPreferences: null == appPreferences
          ? _value.appPreferences
          : appPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
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
  $Res call({AppPreferences appPreferences, bool isLoading, Failure? failure});

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
    Object? appPreferences = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$AppStateImpl(
      appPreferences: null == appPreferences
          ? _value.appPreferences
          : appPreferences // ignore: cast_nullable_to_non_nullable
              as AppPreferences,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      {required this.appPreferences, this.isLoading = false, this.failure});

  @override
  final AppPreferences appPreferences;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AppState(appPreferences: $appPreferences, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.appPreferences, appPreferences) ||
                other.appPreferences == appPreferences) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appPreferences, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final AppPreferences appPreferences,
      final bool isLoading,
      final Failure? failure}) = _$AppStateImpl;

  @override
  AppPreferences get appPreferences;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
