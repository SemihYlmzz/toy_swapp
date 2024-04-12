// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_matches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubMatchesEvent {
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
    required TResult Function(SubMatchesFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubMatchesFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubMatchesFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubMatchesEventCopyWith<$Res> {
  factory $SubMatchesEventCopyWith(
          SubMatchesEvent value, $Res Function(SubMatchesEvent) then) =
      _$SubMatchesEventCopyWithImpl<$Res, SubMatchesEvent>;
}

/// @nodoc
class _$SubMatchesEventCopyWithImpl<$Res, $Val extends SubMatchesEvent>
    implements $SubMatchesEventCopyWith<$Res> {
  _$SubMatchesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubMatchesFetchImplCopyWith<$Res> {
  factory _$$SubMatchesFetchImplCopyWith(_$SubMatchesFetchImpl value,
          $Res Function(_$SubMatchesFetchImpl) then) =
      __$$SubMatchesFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubMatchesFetchImplCopyWithImpl<$Res>
    extends _$SubMatchesEventCopyWithImpl<$Res, _$SubMatchesFetchImpl>
    implements _$$SubMatchesFetchImplCopyWith<$Res> {
  __$$SubMatchesFetchImplCopyWithImpl(
      _$SubMatchesFetchImpl _value, $Res Function(_$SubMatchesFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubMatchesFetchImpl implements SubMatchesFetch {
  const _$SubMatchesFetchImpl();

  @override
  String toString() {
    return 'SubMatchesEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubMatchesFetchImpl);
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
    required TResult Function(SubMatchesFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubMatchesFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubMatchesFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class SubMatchesFetch implements SubMatchesEvent {
  const factory SubMatchesFetch() = _$SubMatchesFetchImpl;
}

/// @nodoc
mixin _$SubMatchesState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubMatchesStateCopyWith<SubMatchesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubMatchesStateCopyWith<$Res> {
  factory $SubMatchesStateCopyWith(
          SubMatchesState value, $Res Function(SubMatchesState) then) =
      _$SubMatchesStateCopyWithImpl<$Res, SubMatchesState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$SubMatchesStateCopyWithImpl<$Res, $Val extends SubMatchesState>
    implements $SubMatchesStateCopyWith<$Res> {
  _$SubMatchesStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SubMatchesStateImplCopyWith<$Res>
    implements $SubMatchesStateCopyWith<$Res> {
  factory _$$SubMatchesStateImplCopyWith(_$SubMatchesStateImpl value,
          $Res Function(_$SubMatchesStateImpl) then) =
      __$$SubMatchesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$SubMatchesStateImplCopyWithImpl<$Res>
    extends _$SubMatchesStateCopyWithImpl<$Res, _$SubMatchesStateImpl>
    implements _$$SubMatchesStateImplCopyWith<$Res> {
  __$$SubMatchesStateImplCopyWithImpl(
      _$SubMatchesStateImpl _value, $Res Function(_$SubMatchesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SubMatchesStateImpl(
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

class _$SubMatchesStateImpl implements _SubMatchesState {
  const _$SubMatchesStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SubMatchesState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubMatchesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubMatchesStateImplCopyWith<_$SubMatchesStateImpl> get copyWith =>
      __$$SubMatchesStateImplCopyWithImpl<_$SubMatchesStateImpl>(
          this, _$identity);
}

abstract class _SubMatchesState implements SubMatchesState {
  const factory _SubMatchesState(
      {final bool isLoading, final Failure? failure}) = _$SubMatchesStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SubMatchesStateImplCopyWith<_$SubMatchesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
