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
  bool get isSignedInValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSignedInValue) isSignedInUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSignedInValue)? isSignedInUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSignedInValue)? isSignedInUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppIsSignedInUpdated value) isSignedInUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppIsSignedInUpdated value)? isSignedInUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppIsSignedInUpdated value)? isSignedInUpdated,
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
  $Res call({bool isSignedInValue});
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
    Object? isSignedInValue = null,
  }) {
    return _then(_value.copyWith(
      isSignedInValue: null == isSignedInValue
          ? _value.isSignedInValue
          : isSignedInValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppIsSignedInUpdatedImplCopyWith<$Res>
    implements $AppEventCopyWith<$Res> {
  factory _$$AppIsSignedInUpdatedImplCopyWith(_$AppIsSignedInUpdatedImpl value,
          $Res Function(_$AppIsSignedInUpdatedImpl) then) =
      __$$AppIsSignedInUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSignedInValue});
}

/// @nodoc
class __$$AppIsSignedInUpdatedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppIsSignedInUpdatedImpl>
    implements _$$AppIsSignedInUpdatedImplCopyWith<$Res> {
  __$$AppIsSignedInUpdatedImplCopyWithImpl(_$AppIsSignedInUpdatedImpl _value,
      $Res Function(_$AppIsSignedInUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignedInValue = null,
  }) {
    return _then(_$AppIsSignedInUpdatedImpl(
      isSignedInValue: null == isSignedInValue
          ? _value.isSignedInValue
          : isSignedInValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppIsSignedInUpdatedImpl implements AppIsSignedInUpdated {
  const _$AppIsSignedInUpdatedImpl({required this.isSignedInValue});

  @override
  final bool isSignedInValue;

  @override
  String toString() {
    return 'AppEvent.isSignedInUpdated(isSignedInValue: $isSignedInValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppIsSignedInUpdatedImpl &&
            (identical(other.isSignedInValue, isSignedInValue) ||
                other.isSignedInValue == isSignedInValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSignedInValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppIsSignedInUpdatedImplCopyWith<_$AppIsSignedInUpdatedImpl>
      get copyWith =>
          __$$AppIsSignedInUpdatedImplCopyWithImpl<_$AppIsSignedInUpdatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSignedInValue) isSignedInUpdated,
  }) {
    return isSignedInUpdated(isSignedInValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSignedInValue)? isSignedInUpdated,
  }) {
    return isSignedInUpdated?.call(isSignedInValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSignedInValue)? isSignedInUpdated,
    required TResult orElse(),
  }) {
    if (isSignedInUpdated != null) {
      return isSignedInUpdated(isSignedInValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppIsSignedInUpdated value) isSignedInUpdated,
  }) {
    return isSignedInUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppIsSignedInUpdated value)? isSignedInUpdated,
  }) {
    return isSignedInUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppIsSignedInUpdated value)? isSignedInUpdated,
    required TResult orElse(),
  }) {
    if (isSignedInUpdated != null) {
      return isSignedInUpdated(this);
    }
    return orElse();
  }
}

abstract class AppIsSignedInUpdated implements AppEvent {
  const factory AppIsSignedInUpdated({required final bool isSignedInValue}) =
      _$AppIsSignedInUpdatedImpl;

  @override
  bool get isSignedInValue;
  @override
  @JsonKey(ignore: true)
  _$$AppIsSignedInUpdatedImplCopyWith<_$AppIsSignedInUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  bool get isSignedIn => throw _privateConstructorUsedError;
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
  $Res call({bool isSignedIn, Failure? failure});
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
    Object? isSignedIn = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      isSignedIn: null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
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
  $Res call({bool isSignedIn, Failure? failure});
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
    Object? isSignedIn = null,
    Object? failure = freezed,
  }) {
    return _then(_$AppStateImpl(
      isSignedIn: null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
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
  const _$AppStateImpl({required this.isSignedIn, this.failure});

  @override
  final bool isSignedIn;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AppState(isSignedIn: $isSignedIn, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSignedIn, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final bool isSignedIn,
      final Failure? failure}) = _$AppStateImpl;

  @override
  bool get isSignedIn;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
