// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toys_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToysEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToysEventCopyWith<$Res> {
  factory $ToysEventCopyWith(ToysEvent value, $Res Function(ToysEvent) then) =
      _$ToysEventCopyWithImpl<$Res, ToysEvent>;
}

/// @nodoc
class _$ToysEventCopyWithImpl<$Res, $Val extends ToysEvent>
    implements $ToysEventCopyWith<$Res> {
  _$ToysEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToysFetchImplCopyWith<$Res> {
  factory _$$ToysFetchImplCopyWith(
          _$ToysFetchImpl value, $Res Function(_$ToysFetchImpl) then) =
      __$$ToysFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToysFetchImplCopyWithImpl<$Res>
    extends _$ToysEventCopyWithImpl<$Res, _$ToysFetchImpl>
    implements _$$ToysFetchImplCopyWith<$Res> {
  __$$ToysFetchImplCopyWithImpl(
      _$ToysFetchImpl _value, $Res Function(_$ToysFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToysFetchImpl implements ToysFetch {
  const _$ToysFetchImpl();

  @override
  String toString() {
    return 'ToysEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToysFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ToysFetch implements ToysEvent {
  const factory ToysFetch() = _$ToysFetchImpl;
}

/// @nodoc
mixin _$ToysState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToysStateCopyWith<ToysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToysStateCopyWith<$Res> {
  factory $ToysStateCopyWith(ToysState value, $Res Function(ToysState) then) =
      _$ToysStateCopyWithImpl<$Res, ToysState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$ToysStateCopyWithImpl<$Res, $Val extends ToysState>
    implements $ToysStateCopyWith<$Res> {
  _$ToysStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$ToysStateImplCopyWith<$Res>
    implements $ToysStateCopyWith<$Res> {
  factory _$$ToysStateImplCopyWith(
          _$ToysStateImpl value, $Res Function(_$ToysStateImpl) then) =
      __$$ToysStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$ToysStateImplCopyWithImpl<$Res>
    extends _$ToysStateCopyWithImpl<$Res, _$ToysStateImpl>
    implements _$$ToysStateImplCopyWith<$Res> {
  __$$ToysStateImplCopyWithImpl(
      _$ToysStateImpl _value, $Res Function(_$ToysStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$ToysStateImpl(
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

class _$ToysStateImpl implements _ToysState {
  const _$ToysStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ToysState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToysStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToysStateImplCopyWith<_$ToysStateImpl> get copyWith =>
      __$$ToysStateImplCopyWithImpl<_$ToysStateImpl>(this, _$identity);
}

abstract class _ToysState implements ToysState {
  const factory _ToysState({final bool isLoading, final Failure? failure}) =
      _$ToysStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ToysStateImplCopyWith<_$ToysStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
