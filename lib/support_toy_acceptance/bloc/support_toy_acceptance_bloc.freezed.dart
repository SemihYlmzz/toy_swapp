// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_toy_acceptance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupportToyAcceptanceEvent {
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
    required TResult Function(SupportToyAcceptanceFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportToyAcceptanceEventCopyWith<$Res> {
  factory $SupportToyAcceptanceEventCopyWith(SupportToyAcceptanceEvent value,
          $Res Function(SupportToyAcceptanceEvent) then) =
      _$SupportToyAcceptanceEventCopyWithImpl<$Res, SupportToyAcceptanceEvent>;
}

/// @nodoc
class _$SupportToyAcceptanceEventCopyWithImpl<$Res,
        $Val extends SupportToyAcceptanceEvent>
    implements $SupportToyAcceptanceEventCopyWith<$Res> {
  _$SupportToyAcceptanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SupportToyAcceptanceFetchImplCopyWith<$Res> {
  factory _$$SupportToyAcceptanceFetchImplCopyWith(
          _$SupportToyAcceptanceFetchImpl value,
          $Res Function(_$SupportToyAcceptanceFetchImpl) then) =
      __$$SupportToyAcceptanceFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SupportToyAcceptanceFetchImplCopyWithImpl<$Res>
    extends _$SupportToyAcceptanceEventCopyWithImpl<$Res,
        _$SupportToyAcceptanceFetchImpl>
    implements _$$SupportToyAcceptanceFetchImplCopyWith<$Res> {
  __$$SupportToyAcceptanceFetchImplCopyWithImpl(
      _$SupportToyAcceptanceFetchImpl _value,
      $Res Function(_$SupportToyAcceptanceFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SupportToyAcceptanceFetchImpl implements SupportToyAcceptanceFetch {
  const _$SupportToyAcceptanceFetchImpl();

  @override
  String toString() {
    return 'SupportToyAcceptanceEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceFetchImpl);
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
    required TResult Function(SupportToyAcceptanceFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class SupportToyAcceptanceFetch implements SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceFetch() = _$SupportToyAcceptanceFetchImpl;
}

/// @nodoc
mixin _$SupportToyAcceptanceState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportToyAcceptanceStateCopyWith<SupportToyAcceptanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportToyAcceptanceStateCopyWith<$Res> {
  factory $SupportToyAcceptanceStateCopyWith(SupportToyAcceptanceState value,
          $Res Function(SupportToyAcceptanceState) then) =
      _$SupportToyAcceptanceStateCopyWithImpl<$Res, SupportToyAcceptanceState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$SupportToyAcceptanceStateCopyWithImpl<$Res,
        $Val extends SupportToyAcceptanceState>
    implements $SupportToyAcceptanceStateCopyWith<$Res> {
  _$SupportToyAcceptanceStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SupportToyAcceptanceStateImplCopyWith<$Res>
    implements $SupportToyAcceptanceStateCopyWith<$Res> {
  factory _$$SupportToyAcceptanceStateImplCopyWith(
          _$SupportToyAcceptanceStateImpl value,
          $Res Function(_$SupportToyAcceptanceStateImpl) then) =
      __$$SupportToyAcceptanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$SupportToyAcceptanceStateImplCopyWithImpl<$Res>
    extends _$SupportToyAcceptanceStateCopyWithImpl<$Res,
        _$SupportToyAcceptanceStateImpl>
    implements _$$SupportToyAcceptanceStateImplCopyWith<$Res> {
  __$$SupportToyAcceptanceStateImplCopyWithImpl(
      _$SupportToyAcceptanceStateImpl _value,
      $Res Function(_$SupportToyAcceptanceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SupportToyAcceptanceStateImpl(
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

class _$SupportToyAcceptanceStateImpl implements _SupportToyAcceptanceState {
  const _$SupportToyAcceptanceStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SupportToyAcceptanceState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportToyAcceptanceStateImplCopyWith<_$SupportToyAcceptanceStateImpl>
      get copyWith => __$$SupportToyAcceptanceStateImplCopyWithImpl<
          _$SupportToyAcceptanceStateImpl>(this, _$identity);
}

abstract class _SupportToyAcceptanceState implements SupportToyAcceptanceState {
  const factory _SupportToyAcceptanceState(
      {final bool isLoading,
      final Failure? failure}) = _$SupportToyAcceptanceStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SupportToyAcceptanceStateImplCopyWith<_$SupportToyAcceptanceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
