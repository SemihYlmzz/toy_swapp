// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_toys_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LikedToysEvent {
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
    required TResult Function(LikedToysFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedToysFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedToysFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedToysEventCopyWith<$Res> {
  factory $LikedToysEventCopyWith(
          LikedToysEvent value, $Res Function(LikedToysEvent) then) =
      _$LikedToysEventCopyWithImpl<$Res, LikedToysEvent>;
}

/// @nodoc
class _$LikedToysEventCopyWithImpl<$Res, $Val extends LikedToysEvent>
    implements $LikedToysEventCopyWith<$Res> {
  _$LikedToysEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LikedToysFetchImplCopyWith<$Res> {
  factory _$$LikedToysFetchImplCopyWith(_$LikedToysFetchImpl value,
          $Res Function(_$LikedToysFetchImpl) then) =
      __$$LikedToysFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikedToysFetchImplCopyWithImpl<$Res>
    extends _$LikedToysEventCopyWithImpl<$Res, _$LikedToysFetchImpl>
    implements _$$LikedToysFetchImplCopyWith<$Res> {
  __$$LikedToysFetchImplCopyWithImpl(
      _$LikedToysFetchImpl _value, $Res Function(_$LikedToysFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LikedToysFetchImpl implements LikedToysFetch {
  const _$LikedToysFetchImpl();

  @override
  String toString() {
    return 'LikedToysEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikedToysFetchImpl);
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
    required TResult Function(LikedToysFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedToysFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedToysFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class LikedToysFetch implements LikedToysEvent {
  const factory LikedToysFetch() = _$LikedToysFetchImpl;
}

/// @nodoc
mixin _$LikedToysState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikedToysStateCopyWith<LikedToysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedToysStateCopyWith<$Res> {
  factory $LikedToysStateCopyWith(
          LikedToysState value, $Res Function(LikedToysState) then) =
      _$LikedToysStateCopyWithImpl<$Res, LikedToysState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$LikedToysStateCopyWithImpl<$Res, $Val extends LikedToysState>
    implements $LikedToysStateCopyWith<$Res> {
  _$LikedToysStateCopyWithImpl(this._value, this._then);

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
abstract class _$$LikedToysStateImplCopyWith<$Res>
    implements $LikedToysStateCopyWith<$Res> {
  factory _$$LikedToysStateImplCopyWith(_$LikedToysStateImpl value,
          $Res Function(_$LikedToysStateImpl) then) =
      __$$LikedToysStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$LikedToysStateImplCopyWithImpl<$Res>
    extends _$LikedToysStateCopyWithImpl<$Res, _$LikedToysStateImpl>
    implements _$$LikedToysStateImplCopyWith<$Res> {
  __$$LikedToysStateImplCopyWithImpl(
      _$LikedToysStateImpl _value, $Res Function(_$LikedToysStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$LikedToysStateImpl(
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

class _$LikedToysStateImpl implements _LikedToysState {
  const _$LikedToysStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'LikedToysState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedToysStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedToysStateImplCopyWith<_$LikedToysStateImpl> get copyWith =>
      __$$LikedToysStateImplCopyWithImpl<_$LikedToysStateImpl>(
          this, _$identity);
}

abstract class _LikedToysState implements LikedToysState {
  const factory _LikedToysState(
      {final bool isLoading, final Failure? failure}) = _$LikedToysStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$LikedToysStateImplCopyWith<_$LikedToysStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
