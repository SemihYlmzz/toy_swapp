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
    required TResult Function() initializeAllDependencies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeAllDependencies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeAllDependencies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartupInitializeAllDependencies value)
        initializeAllDependencies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartupInitializeAllDependencies value)?
        initializeAllDependencies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitializeAllDependencies value)?
        initializeAllDependencies,
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
abstract class _$$StartupInitializeAllDependenciesImplCopyWith<$Res> {
  factory _$$StartupInitializeAllDependenciesImplCopyWith(
          _$StartupInitializeAllDependenciesImpl value,
          $Res Function(_$StartupInitializeAllDependenciesImpl) then) =
      __$$StartupInitializeAllDependenciesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartupInitializeAllDependenciesImplCopyWithImpl<$Res>
    extends _$StartupEventCopyWithImpl<$Res,
        _$StartupInitializeAllDependenciesImpl>
    implements _$$StartupInitializeAllDependenciesImplCopyWith<$Res> {
  __$$StartupInitializeAllDependenciesImplCopyWithImpl(
      _$StartupInitializeAllDependenciesImpl _value,
      $Res Function(_$StartupInitializeAllDependenciesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartupInitializeAllDependenciesImpl
    implements StartupInitializeAllDependencies {
  const _$StartupInitializeAllDependenciesImpl();

  @override
  String toString() {
    return 'StartupEvent.initializeAllDependencies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartupInitializeAllDependenciesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeAllDependencies,
  }) {
    return initializeAllDependencies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeAllDependencies,
  }) {
    return initializeAllDependencies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeAllDependencies,
    required TResult orElse(),
  }) {
    if (initializeAllDependencies != null) {
      return initializeAllDependencies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartupInitializeAllDependencies value)
        initializeAllDependencies,
  }) {
    return initializeAllDependencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartupInitializeAllDependencies value)?
        initializeAllDependencies,
  }) {
    return initializeAllDependencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartupInitializeAllDependencies value)?
        initializeAllDependencies,
    required TResult orElse(),
  }) {
    if (initializeAllDependencies != null) {
      return initializeAllDependencies(this);
    }
    return orElse();
  }
}

abstract class StartupInitializeAllDependencies implements StartupEvent {
  const factory StartupInitializeAllDependencies() =
      _$StartupInitializeAllDependenciesImpl;
}

/// @nodoc
mixin _$StartupState {
  AppDependencies? get appDependencies => throw _privateConstructorUsedError;
  bool get isInitializeError => throw _privateConstructorUsedError;

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
  $Res call({AppDependencies? appDependencies, bool isInitializeError});
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
    Object? appDependencies = freezed,
    Object? isInitializeError = null,
  }) {
    return _then(_value.copyWith(
      appDependencies: freezed == appDependencies
          ? _value.appDependencies
          : appDependencies // ignore: cast_nullable_to_non_nullable
              as AppDependencies?,
      isInitializeError: null == isInitializeError
          ? _value.isInitializeError
          : isInitializeError // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({AppDependencies? appDependencies, bool isInitializeError});
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
    Object? appDependencies = freezed,
    Object? isInitializeError = null,
  }) {
    return _then(_$StartupStateImpl(
      appDependencies: freezed == appDependencies
          ? _value.appDependencies
          : appDependencies // ignore: cast_nullable_to_non_nullable
              as AppDependencies?,
      isInitializeError: null == isInitializeError
          ? _value.isInitializeError
          : isInitializeError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartupStateImpl implements _StartupState {
  const _$StartupStateImpl(
      {this.appDependencies, this.isInitializeError = false});

  @override
  final AppDependencies? appDependencies;
  @override
  @JsonKey()
  final bool isInitializeError;

  @override
  String toString() {
    return 'StartupState(appDependencies: $appDependencies, isInitializeError: $isInitializeError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartupStateImpl &&
            (identical(other.appDependencies, appDependencies) ||
                other.appDependencies == appDependencies) &&
            (identical(other.isInitializeError, isInitializeError) ||
                other.isInitializeError == isInitializeError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appDependencies, isInitializeError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartupStateImplCopyWith<_$StartupStateImpl> get copyWith =>
      __$$StartupStateImplCopyWithImpl<_$StartupStateImpl>(this, _$identity);
}

abstract class _StartupState implements StartupState {
  const factory _StartupState(
      {final AppDependencies? appDependencies,
      final bool isInitializeError}) = _$StartupStateImpl;

  @override
  AppDependencies? get appDependencies;
  @override
  bool get isInitializeError;
  @override
  @JsonKey(ignore: true)
  _$$StartupStateImplCopyWith<_$StartupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
