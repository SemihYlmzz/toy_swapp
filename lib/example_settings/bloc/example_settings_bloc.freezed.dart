// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExampleSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode updatedThemeMode) updateAppThemeMode,
    required TResult Function(Language updatedLanguage) updateAppLanguage,
    required TResult Function(bool updatedIsVibratable) updateAppIsVibratable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode updatedThemeMode)? updateAppThemeMode,
    TResult? Function(Language updatedLanguage)? updateAppLanguage,
    TResult? Function(bool updatedIsVibratable)? updateAppIsVibratable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode updatedThemeMode)? updateAppThemeMode,
    TResult Function(Language updatedLanguage)? updateAppLanguage,
    TResult Function(bool updatedIsVibratable)? updateAppIsVibratable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleSettingsUpdateAppThemeMode value)
        updateAppThemeMode,
    required TResult Function(ExampleSettingsUpdateAppLanguage value)
        updateAppLanguage,
    required TResult Function(ExampleSettingsUpdateAppIsVibratable value)
        updateAppIsVibratable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleSettingsUpdateAppThemeMode value)?
        updateAppThemeMode,
    TResult? Function(ExampleSettingsUpdateAppLanguage value)?
        updateAppLanguage,
    TResult? Function(ExampleSettingsUpdateAppIsVibratable value)?
        updateAppIsVibratable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleSettingsUpdateAppThemeMode value)?
        updateAppThemeMode,
    TResult Function(ExampleSettingsUpdateAppLanguage value)? updateAppLanguage,
    TResult Function(ExampleSettingsUpdateAppIsVibratable value)?
        updateAppIsVibratable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleSettingsEventCopyWith<$Res> {
  factory $ExampleSettingsEventCopyWith(ExampleSettingsEvent value,
          $Res Function(ExampleSettingsEvent) then) =
      _$ExampleSettingsEventCopyWithImpl<$Res, ExampleSettingsEvent>;
}

/// @nodoc
class _$ExampleSettingsEventCopyWithImpl<$Res,
        $Val extends ExampleSettingsEvent>
    implements $ExampleSettingsEventCopyWith<$Res> {
  _$ExampleSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExampleSettingsUpdateAppThemeModeImplCopyWith<$Res> {
  factory _$$ExampleSettingsUpdateAppThemeModeImplCopyWith(
          _$ExampleSettingsUpdateAppThemeModeImpl value,
          $Res Function(_$ExampleSettingsUpdateAppThemeModeImpl) then) =
      __$$ExampleSettingsUpdateAppThemeModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode updatedThemeMode});
}

/// @nodoc
class __$$ExampleSettingsUpdateAppThemeModeImplCopyWithImpl<$Res>
    extends _$ExampleSettingsEventCopyWithImpl<$Res,
        _$ExampleSettingsUpdateAppThemeModeImpl>
    implements _$$ExampleSettingsUpdateAppThemeModeImplCopyWith<$Res> {
  __$$ExampleSettingsUpdateAppThemeModeImplCopyWithImpl(
      _$ExampleSettingsUpdateAppThemeModeImpl _value,
      $Res Function(_$ExampleSettingsUpdateAppThemeModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedThemeMode = null,
  }) {
    return _then(_$ExampleSettingsUpdateAppThemeModeImpl(
      updatedThemeMode: null == updatedThemeMode
          ? _value.updatedThemeMode
          : updatedThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ExampleSettingsUpdateAppThemeModeImpl
    implements ExampleSettingsUpdateAppThemeMode {
  const _$ExampleSettingsUpdateAppThemeModeImpl(
      {required this.updatedThemeMode});

  @override
  final ThemeMode updatedThemeMode;

  @override
  String toString() {
    return 'ExampleSettingsEvent.updateAppThemeMode(updatedThemeMode: $updatedThemeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleSettingsUpdateAppThemeModeImpl &&
            (identical(other.updatedThemeMode, updatedThemeMode) ||
                other.updatedThemeMode == updatedThemeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedThemeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleSettingsUpdateAppThemeModeImplCopyWith<
          _$ExampleSettingsUpdateAppThemeModeImpl>
      get copyWith => __$$ExampleSettingsUpdateAppThemeModeImplCopyWithImpl<
          _$ExampleSettingsUpdateAppThemeModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode updatedThemeMode) updateAppThemeMode,
    required TResult Function(Language updatedLanguage) updateAppLanguage,
    required TResult Function(bool updatedIsVibratable) updateAppIsVibratable,
  }) {
    return updateAppThemeMode(updatedThemeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode updatedThemeMode)? updateAppThemeMode,
    TResult? Function(Language updatedLanguage)? updateAppLanguage,
    TResult? Function(bool updatedIsVibratable)? updateAppIsVibratable,
  }) {
    return updateAppThemeMode?.call(updatedThemeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode updatedThemeMode)? updateAppThemeMode,
    TResult Function(Language updatedLanguage)? updateAppLanguage,
    TResult Function(bool updatedIsVibratable)? updateAppIsVibratable,
    required TResult orElse(),
  }) {
    if (updateAppThemeMode != null) {
      return updateAppThemeMode(updatedThemeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleSettingsUpdateAppThemeMode value)
        updateAppThemeMode,
    required TResult Function(ExampleSettingsUpdateAppLanguage value)
        updateAppLanguage,
    required TResult Function(ExampleSettingsUpdateAppIsVibratable value)
        updateAppIsVibratable,
  }) {
    return updateAppThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleSettingsUpdateAppThemeMode value)?
        updateAppThemeMode,
    TResult? Function(ExampleSettingsUpdateAppLanguage value)?
        updateAppLanguage,
    TResult? Function(ExampleSettingsUpdateAppIsVibratable value)?
        updateAppIsVibratable,
  }) {
    return updateAppThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleSettingsUpdateAppThemeMode value)?
        updateAppThemeMode,
    TResult Function(ExampleSettingsUpdateAppLanguage value)? updateAppLanguage,
    TResult Function(ExampleSettingsUpdateAppIsVibratable value)?
        updateAppIsVibratable,
    required TResult orElse(),
  }) {
    if (updateAppThemeMode != null) {
      return updateAppThemeMode(this);
    }
    return orElse();
  }
}

abstract class ExampleSettingsUpdateAppThemeMode
    implements ExampleSettingsEvent {
  const factory ExampleSettingsUpdateAppThemeMode(
          {required final ThemeMode updatedThemeMode}) =
      _$ExampleSettingsUpdateAppThemeModeImpl;

  ThemeMode get updatedThemeMode;
  @JsonKey(ignore: true)
  _$$ExampleSettingsUpdateAppThemeModeImplCopyWith<
          _$ExampleSettingsUpdateAppThemeModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExampleSettingsUpdateAppLanguageImplCopyWith<$Res> {
  factory _$$ExampleSettingsUpdateAppLanguageImplCopyWith(
          _$ExampleSettingsUpdateAppLanguageImpl value,
          $Res Function(_$ExampleSettingsUpdateAppLanguageImpl) then) =
      __$$ExampleSettingsUpdateAppLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Language updatedLanguage});
}

/// @nodoc
class __$$ExampleSettingsUpdateAppLanguageImplCopyWithImpl<$Res>
    extends _$ExampleSettingsEventCopyWithImpl<$Res,
        _$ExampleSettingsUpdateAppLanguageImpl>
    implements _$$ExampleSettingsUpdateAppLanguageImplCopyWith<$Res> {
  __$$ExampleSettingsUpdateAppLanguageImplCopyWithImpl(
      _$ExampleSettingsUpdateAppLanguageImpl _value,
      $Res Function(_$ExampleSettingsUpdateAppLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedLanguage = null,
  }) {
    return _then(_$ExampleSettingsUpdateAppLanguageImpl(
      updatedLanguage: null == updatedLanguage
          ? _value.updatedLanguage
          : updatedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$ExampleSettingsUpdateAppLanguageImpl
    implements ExampleSettingsUpdateAppLanguage {
  const _$ExampleSettingsUpdateAppLanguageImpl({required this.updatedLanguage});

  @override
  final Language updatedLanguage;

  @override
  String toString() {
    return 'ExampleSettingsEvent.updateAppLanguage(updatedLanguage: $updatedLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleSettingsUpdateAppLanguageImpl &&
            (identical(other.updatedLanguage, updatedLanguage) ||
                other.updatedLanguage == updatedLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleSettingsUpdateAppLanguageImplCopyWith<
          _$ExampleSettingsUpdateAppLanguageImpl>
      get copyWith => __$$ExampleSettingsUpdateAppLanguageImplCopyWithImpl<
          _$ExampleSettingsUpdateAppLanguageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode updatedThemeMode) updateAppThemeMode,
    required TResult Function(Language updatedLanguage) updateAppLanguage,
    required TResult Function(bool updatedIsVibratable) updateAppIsVibratable,
  }) {
    return updateAppLanguage(updatedLanguage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode updatedThemeMode)? updateAppThemeMode,
    TResult? Function(Language updatedLanguage)? updateAppLanguage,
    TResult? Function(bool updatedIsVibratable)? updateAppIsVibratable,
  }) {
    return updateAppLanguage?.call(updatedLanguage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode updatedThemeMode)? updateAppThemeMode,
    TResult Function(Language updatedLanguage)? updateAppLanguage,
    TResult Function(bool updatedIsVibratable)? updateAppIsVibratable,
    required TResult orElse(),
  }) {
    if (updateAppLanguage != null) {
      return updateAppLanguage(updatedLanguage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleSettingsUpdateAppThemeMode value)
        updateAppThemeMode,
    required TResult Function(ExampleSettingsUpdateAppLanguage value)
        updateAppLanguage,
    required TResult Function(ExampleSettingsUpdateAppIsVibratable value)
        updateAppIsVibratable,
  }) {
    return updateAppLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleSettingsUpdateAppThemeMode value)?
        updateAppThemeMode,
    TResult? Function(ExampleSettingsUpdateAppLanguage value)?
        updateAppLanguage,
    TResult? Function(ExampleSettingsUpdateAppIsVibratable value)?
        updateAppIsVibratable,
  }) {
    return updateAppLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleSettingsUpdateAppThemeMode value)?
        updateAppThemeMode,
    TResult Function(ExampleSettingsUpdateAppLanguage value)? updateAppLanguage,
    TResult Function(ExampleSettingsUpdateAppIsVibratable value)?
        updateAppIsVibratable,
    required TResult orElse(),
  }) {
    if (updateAppLanguage != null) {
      return updateAppLanguage(this);
    }
    return orElse();
  }
}

abstract class ExampleSettingsUpdateAppLanguage
    implements ExampleSettingsEvent {
  const factory ExampleSettingsUpdateAppLanguage(
          {required final Language updatedLanguage}) =
      _$ExampleSettingsUpdateAppLanguageImpl;

  Language get updatedLanguage;
  @JsonKey(ignore: true)
  _$$ExampleSettingsUpdateAppLanguageImplCopyWith<
          _$ExampleSettingsUpdateAppLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExampleSettingsUpdateAppIsVibratableImplCopyWith<$Res> {
  factory _$$ExampleSettingsUpdateAppIsVibratableImplCopyWith(
          _$ExampleSettingsUpdateAppIsVibratableImpl value,
          $Res Function(_$ExampleSettingsUpdateAppIsVibratableImpl) then) =
      __$$ExampleSettingsUpdateAppIsVibratableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool updatedIsVibratable});
}

/// @nodoc
class __$$ExampleSettingsUpdateAppIsVibratableImplCopyWithImpl<$Res>
    extends _$ExampleSettingsEventCopyWithImpl<$Res,
        _$ExampleSettingsUpdateAppIsVibratableImpl>
    implements _$$ExampleSettingsUpdateAppIsVibratableImplCopyWith<$Res> {
  __$$ExampleSettingsUpdateAppIsVibratableImplCopyWithImpl(
      _$ExampleSettingsUpdateAppIsVibratableImpl _value,
      $Res Function(_$ExampleSettingsUpdateAppIsVibratableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedIsVibratable = null,
  }) {
    return _then(_$ExampleSettingsUpdateAppIsVibratableImpl(
      updatedIsVibratable: null == updatedIsVibratable
          ? _value.updatedIsVibratable
          : updatedIsVibratable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExampleSettingsUpdateAppIsVibratableImpl
    implements ExampleSettingsUpdateAppIsVibratable {
  const _$ExampleSettingsUpdateAppIsVibratableImpl(
      {required this.updatedIsVibratable});

  @override
  final bool updatedIsVibratable;

  @override
  String toString() {
    return 'ExampleSettingsEvent.updateAppIsVibratable(updatedIsVibratable: $updatedIsVibratable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleSettingsUpdateAppIsVibratableImpl &&
            (identical(other.updatedIsVibratable, updatedIsVibratable) ||
                other.updatedIsVibratable == updatedIsVibratable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedIsVibratable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleSettingsUpdateAppIsVibratableImplCopyWith<
          _$ExampleSettingsUpdateAppIsVibratableImpl>
      get copyWith => __$$ExampleSettingsUpdateAppIsVibratableImplCopyWithImpl<
          _$ExampleSettingsUpdateAppIsVibratableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode updatedThemeMode) updateAppThemeMode,
    required TResult Function(Language updatedLanguage) updateAppLanguage,
    required TResult Function(bool updatedIsVibratable) updateAppIsVibratable,
  }) {
    return updateAppIsVibratable(updatedIsVibratable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode updatedThemeMode)? updateAppThemeMode,
    TResult? Function(Language updatedLanguage)? updateAppLanguage,
    TResult? Function(bool updatedIsVibratable)? updateAppIsVibratable,
  }) {
    return updateAppIsVibratable?.call(updatedIsVibratable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode updatedThemeMode)? updateAppThemeMode,
    TResult Function(Language updatedLanguage)? updateAppLanguage,
    TResult Function(bool updatedIsVibratable)? updateAppIsVibratable,
    required TResult orElse(),
  }) {
    if (updateAppIsVibratable != null) {
      return updateAppIsVibratable(updatedIsVibratable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleSettingsUpdateAppThemeMode value)
        updateAppThemeMode,
    required TResult Function(ExampleSettingsUpdateAppLanguage value)
        updateAppLanguage,
    required TResult Function(ExampleSettingsUpdateAppIsVibratable value)
        updateAppIsVibratable,
  }) {
    return updateAppIsVibratable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExampleSettingsUpdateAppThemeMode value)?
        updateAppThemeMode,
    TResult? Function(ExampleSettingsUpdateAppLanguage value)?
        updateAppLanguage,
    TResult? Function(ExampleSettingsUpdateAppIsVibratable value)?
        updateAppIsVibratable,
  }) {
    return updateAppIsVibratable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleSettingsUpdateAppThemeMode value)?
        updateAppThemeMode,
    TResult Function(ExampleSettingsUpdateAppLanguage value)? updateAppLanguage,
    TResult Function(ExampleSettingsUpdateAppIsVibratable value)?
        updateAppIsVibratable,
    required TResult orElse(),
  }) {
    if (updateAppIsVibratable != null) {
      return updateAppIsVibratable(this);
    }
    return orElse();
  }
}

abstract class ExampleSettingsUpdateAppIsVibratable
    implements ExampleSettingsEvent {
  const factory ExampleSettingsUpdateAppIsVibratable(
          {required final bool updatedIsVibratable}) =
      _$ExampleSettingsUpdateAppIsVibratableImpl;

  bool get updatedIsVibratable;
  @JsonKey(ignore: true)
  _$$ExampleSettingsUpdateAppIsVibratableImplCopyWith<
          _$ExampleSettingsUpdateAppIsVibratableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExampleSettingsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleSettingsStateCopyWith<ExampleSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleSettingsStateCopyWith<$Res> {
  factory $ExampleSettingsStateCopyWith(ExampleSettingsState value,
          $Res Function(ExampleSettingsState) then) =
      _$ExampleSettingsStateCopyWithImpl<$Res, ExampleSettingsState>;
  @useResult
  $Res call({bool isLoading, String? errorMessage});
}

/// @nodoc
class _$ExampleSettingsStateCopyWithImpl<$Res,
        $Val extends ExampleSettingsState>
    implements $ExampleSettingsStateCopyWith<$Res> {
  _$ExampleSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleSettingsStateImplCopyWith<$Res>
    implements $ExampleSettingsStateCopyWith<$Res> {
  factory _$$ExampleSettingsStateImplCopyWith(_$ExampleSettingsStateImpl value,
          $Res Function(_$ExampleSettingsStateImpl) then) =
      __$$ExampleSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$ExampleSettingsStateImplCopyWithImpl<$Res>
    extends _$ExampleSettingsStateCopyWithImpl<$Res, _$ExampleSettingsStateImpl>
    implements _$$ExampleSettingsStateImplCopyWith<$Res> {
  __$$ExampleSettingsStateImplCopyWithImpl(_$ExampleSettingsStateImpl _value,
      $Res Function(_$ExampleSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ExampleSettingsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ExampleSettingsStateImpl implements _ExampleSettingsState {
  const _$ExampleSettingsStateImpl(
      {this.isLoading = false, this.errorMessage = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'ExampleSettingsState(isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleSettingsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleSettingsStateImplCopyWith<_$ExampleSettingsStateImpl>
      get copyWith =>
          __$$ExampleSettingsStateImplCopyWithImpl<_$ExampleSettingsStateImpl>(
              this, _$identity);
}

abstract class _ExampleSettingsState implements ExampleSettingsState {
  const factory _ExampleSettingsState(
      {final bool isLoading,
      final String? errorMessage}) = _$ExampleSettingsStateImpl;

  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ExampleSettingsStateImplCopyWith<_$ExampleSettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
