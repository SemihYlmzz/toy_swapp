// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'startup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartupInitializeAll value) initializeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartupInitializeAll value)? initializeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitializeAll value)? initializeAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupEventCopyWith<$Res> {
  factory $StartupEventCopyWith(
          StartupEvent value, $Res Function(StartupEvent) then) =
      _$StartupEventCopyWithImpl<$Res, StartupEvent>;
}

/// @nodoc
class _$StartupEventCopyWithImpl<$Res, $Val extends StartupEvent>
    implements $StartupEventCopyWith<$Res> {
  _$StartupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartupInitializeAllImplCopyWith<$Res> {
  factory _$$StartupInitializeAllImplCopyWith(_$StartupInitializeAllImpl value,
          $Res Function(_$StartupInitializeAllImpl) then) =
      __$$StartupInitializeAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartupInitializeAllImplCopyWithImpl<$Res>
    extends _$StartupEventCopyWithImpl<$Res, _$StartupInitializeAllImpl>
    implements _$$StartupInitializeAllImplCopyWith<$Res> {
  __$$StartupInitializeAllImplCopyWithImpl(_$StartupInitializeAllImpl _value,
      $Res Function(_$StartupInitializeAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartupInitializeAllImpl implements StartupInitializeAll {
  const _$StartupInitializeAllImpl();

  @override
  String toString() {
    return 'StartupEvent.initializeAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartupInitializeAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeAll,
  }) {
    return initializeAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeAll,
  }) {
    return initializeAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeAll,
    required TResult orElse(),
  }) {
    if (initializeAll != null) {
      return initializeAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartupInitializeAll value) initializeAll,
  }) {
    return initializeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartupInitializeAll value)? initializeAll,
  }) {
    return initializeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitializeAll value)? initializeAll,
    required TResult orElse(),
  }) {
    if (initializeAll != null) {
      return initializeAll(this);
    }
    return orElse();
  }
}

abstract class StartupInitializeAll implements StartupEvent {
  const factory StartupInitializeAll() = _$StartupInitializeAllImpl;
}

/// @nodoc
mixin _$StartupState {
  bool get isInitializing => throw _privateConstructorUsedError;
  bool get isInitializeError => throw _privateConstructorUsedError;
  ({SharedPreferencesApi sharedPreferencesApi})? get localDatabaseApis =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartupStateCopyWith<StartupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupStateCopyWith<$Res> {
  factory $StartupStateCopyWith(
          StartupState value, $Res Function(StartupState) then) =
      _$StartupStateCopyWithImpl<$Res, StartupState>;
  @useResult
  $Res call(
      {bool isInitializing,
      bool isInitializeError,
      ({SharedPreferencesApi sharedPreferencesApi})? localDatabaseApis});
}

/// @nodoc
class _$StartupStateCopyWithImpl<$Res, $Val extends StartupState>
    implements $StartupStateCopyWith<$Res> {
  _$StartupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitializing = null,
    Object? isInitializeError = null,
    Object? localDatabaseApis = freezed,
  }) {
    return _then(_value.copyWith(
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitializeError: null == isInitializeError
          ? _value.isInitializeError
          : isInitializeError // ignore: cast_nullable_to_non_nullable
              as bool,
      localDatabaseApis: freezed == localDatabaseApis
          ? _value.localDatabaseApis
          : localDatabaseApis // ignore: cast_nullable_to_non_nullable
              as ({SharedPreferencesApi sharedPreferencesApi})?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartupStateImplCopyWith<$Res>
    implements $StartupStateCopyWith<$Res> {
  factory _$$StartupStateImplCopyWith(
          _$StartupStateImpl value, $Res Function(_$StartupStateImpl) then) =
      __$$StartupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInitializing,
      bool isInitializeError,
      ({SharedPreferencesApi sharedPreferencesApi})? localDatabaseApis});
}

/// @nodoc
class __$$StartupStateImplCopyWithImpl<$Res>
    extends _$StartupStateCopyWithImpl<$Res, _$StartupStateImpl>
    implements _$$StartupStateImplCopyWith<$Res> {
  __$$StartupStateImplCopyWithImpl(
      _$StartupStateImpl _value, $Res Function(_$StartupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitializing = null,
    Object? isInitializeError = null,
    Object? localDatabaseApis = freezed,
  }) {
    return _then(_$StartupStateImpl(
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitializeError: null == isInitializeError
          ? _value.isInitializeError
          : isInitializeError // ignore: cast_nullable_to_non_nullable
              as bool,
      localDatabaseApis: freezed == localDatabaseApis
          ? _value.localDatabaseApis
          : localDatabaseApis // ignore: cast_nullable_to_non_nullable
              as ({SharedPreferencesApi sharedPreferencesApi})?,
    ));
  }
}

/// @nodoc

class _$StartupStateImpl implements _StartupState {
  const _$StartupStateImpl(
      {this.isInitializing = false,
      this.isInitializeError = false,
      this.localDatabaseApis});

  @override
  @JsonKey()
  final bool isInitializing;
  @override
  @JsonKey()
  final bool isInitializeError;
  @override
  final ({SharedPreferencesApi sharedPreferencesApi})? localDatabaseApis;

  @override
  String toString() {
    return 'StartupState(isInitializing: $isInitializing, isInitializeError: $isInitializeError, localDatabaseApis: $localDatabaseApis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartupStateImpl &&
            (identical(other.isInitializing, isInitializing) ||
                other.isInitializing == isInitializing) &&
            (identical(other.isInitializeError, isInitializeError) ||
                other.isInitializeError == isInitializeError) &&
            (identical(other.localDatabaseApis, localDatabaseApis) ||
                other.localDatabaseApis == localDatabaseApis));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isInitializing, isInitializeError, localDatabaseApis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartupStateImplCopyWith<_$StartupStateImpl> get copyWith =>
      __$$StartupStateImplCopyWithImpl<_$StartupStateImpl>(this, _$identity);
}

abstract class _StartupState implements StartupState {
  const factory _StartupState(
      {final bool isInitializing,
      final bool isInitializeError,
      final ({
        SharedPreferencesApi sharedPreferencesApi
      })? localDatabaseApis}) = _$StartupStateImpl;

  @override
  bool get isInitializing;
  @override
  bool get isInitializeError;
  @override
  ({SharedPreferencesApi sharedPreferencesApi})? get localDatabaseApis;
  @override
  @JsonKey(ignore: true)
  _$$StartupStateImplCopyWith<_$StartupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
