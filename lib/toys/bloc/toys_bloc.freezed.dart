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
    required TResult Function(bool clearBeforeFetch) fetchLikeableToys,
    required TResult Function() clearFetchMoreFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool clearBeforeFetch)? fetchLikeableToys,
    TResult? Function()? clearFetchMoreFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool clearBeforeFetch)? fetchLikeableToys,
    TResult Function()? clearFetchMoreFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetchLikeableToys value) fetchLikeableToys,
    required TResult Function(ToysClearFetchMoreFailure value)
        clearFetchMoreFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult? Function(ToysClearFetchMoreFailure value)? clearFetchMoreFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult Function(ToysClearFetchMoreFailure value)? clearFetchMoreFailure,
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
abstract class _$$ToysFetchLikeableToysImplCopyWith<$Res> {
  factory _$$ToysFetchLikeableToysImplCopyWith(
          _$ToysFetchLikeableToysImpl value,
          $Res Function(_$ToysFetchLikeableToysImpl) then) =
      __$$ToysFetchLikeableToysImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool clearBeforeFetch});
}

/// @nodoc
class __$$ToysFetchLikeableToysImplCopyWithImpl<$Res>
    extends _$ToysEventCopyWithImpl<$Res, _$ToysFetchLikeableToysImpl>
    implements _$$ToysFetchLikeableToysImplCopyWith<$Res> {
  __$$ToysFetchLikeableToysImplCopyWithImpl(_$ToysFetchLikeableToysImpl _value,
      $Res Function(_$ToysFetchLikeableToysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clearBeforeFetch = null,
  }) {
    return _then(_$ToysFetchLikeableToysImpl(
      clearBeforeFetch: null == clearBeforeFetch
          ? _value.clearBeforeFetch
          : clearBeforeFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToysFetchLikeableToysImpl implements ToysFetchLikeableToys {
  const _$ToysFetchLikeableToysImpl({this.clearBeforeFetch = false});

  @override
  @JsonKey()
  final bool clearBeforeFetch;

  @override
  String toString() {
    return 'ToysEvent.fetchLikeableToys(clearBeforeFetch: $clearBeforeFetch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToysFetchLikeableToysImpl &&
            (identical(other.clearBeforeFetch, clearBeforeFetch) ||
                other.clearBeforeFetch == clearBeforeFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clearBeforeFetch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToysFetchLikeableToysImplCopyWith<_$ToysFetchLikeableToysImpl>
      get copyWith => __$$ToysFetchLikeableToysImplCopyWithImpl<
          _$ToysFetchLikeableToysImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool clearBeforeFetch) fetchLikeableToys,
    required TResult Function() clearFetchMoreFailure,
  }) {
    return fetchLikeableToys(clearBeforeFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool clearBeforeFetch)? fetchLikeableToys,
    TResult? Function()? clearFetchMoreFailure,
  }) {
    return fetchLikeableToys?.call(clearBeforeFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool clearBeforeFetch)? fetchLikeableToys,
    TResult Function()? clearFetchMoreFailure,
    required TResult orElse(),
  }) {
    if (fetchLikeableToys != null) {
      return fetchLikeableToys(clearBeforeFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetchLikeableToys value) fetchLikeableToys,
    required TResult Function(ToysClearFetchMoreFailure value)
        clearFetchMoreFailure,
  }) {
    return fetchLikeableToys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult? Function(ToysClearFetchMoreFailure value)? clearFetchMoreFailure,
  }) {
    return fetchLikeableToys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult Function(ToysClearFetchMoreFailure value)? clearFetchMoreFailure,
    required TResult orElse(),
  }) {
    if (fetchLikeableToys != null) {
      return fetchLikeableToys(this);
    }
    return orElse();
  }
}

abstract class ToysFetchLikeableToys implements ToysEvent {
  const factory ToysFetchLikeableToys({final bool clearBeforeFetch}) =
      _$ToysFetchLikeableToysImpl;

  bool get clearBeforeFetch;
  @JsonKey(ignore: true)
  _$$ToysFetchLikeableToysImplCopyWith<_$ToysFetchLikeableToysImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToysClearFetchMoreFailureImplCopyWith<$Res> {
  factory _$$ToysClearFetchMoreFailureImplCopyWith(
          _$ToysClearFetchMoreFailureImpl value,
          $Res Function(_$ToysClearFetchMoreFailureImpl) then) =
      __$$ToysClearFetchMoreFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToysClearFetchMoreFailureImplCopyWithImpl<$Res>
    extends _$ToysEventCopyWithImpl<$Res, _$ToysClearFetchMoreFailureImpl>
    implements _$$ToysClearFetchMoreFailureImplCopyWith<$Res> {
  __$$ToysClearFetchMoreFailureImplCopyWithImpl(
      _$ToysClearFetchMoreFailureImpl _value,
      $Res Function(_$ToysClearFetchMoreFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToysClearFetchMoreFailureImpl implements ToysClearFetchMoreFailure {
  const _$ToysClearFetchMoreFailureImpl();

  @override
  String toString() {
    return 'ToysEvent.clearFetchMoreFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToysClearFetchMoreFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool clearBeforeFetch) fetchLikeableToys,
    required TResult Function() clearFetchMoreFailure,
  }) {
    return clearFetchMoreFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool clearBeforeFetch)? fetchLikeableToys,
    TResult? Function()? clearFetchMoreFailure,
  }) {
    return clearFetchMoreFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool clearBeforeFetch)? fetchLikeableToys,
    TResult Function()? clearFetchMoreFailure,
    required TResult orElse(),
  }) {
    if (clearFetchMoreFailure != null) {
      return clearFetchMoreFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetchLikeableToys value) fetchLikeableToys,
    required TResult Function(ToysClearFetchMoreFailure value)
        clearFetchMoreFailure,
  }) {
    return clearFetchMoreFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult? Function(ToysClearFetchMoreFailure value)? clearFetchMoreFailure,
  }) {
    return clearFetchMoreFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult Function(ToysClearFetchMoreFailure value)? clearFetchMoreFailure,
    required TResult orElse(),
  }) {
    if (clearFetchMoreFailure != null) {
      return clearFetchMoreFailure(this);
    }
    return orElse();
  }
}

abstract class ToysClearFetchMoreFailure implements ToysEvent {
  const factory ToysClearFetchMoreFailure() = _$ToysClearFetchMoreFailureImpl;
}

/// @nodoc
mixin _$ToysState {
  Auth get currentAuth => throw _privateConstructorUsedError;
  List<ToyAndOwnerConsumer> get toys => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isInitializing => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get initializingFailure => throw _privateConstructorUsedError;
  Failure? get fetchMoreFailure => throw _privateConstructorUsedError;
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
  $Res call(
      {Auth currentAuth,
      List<ToyAndOwnerConsumer> toys,
      bool hasReachedMax,
      bool isInitializing,
      bool isLoading,
      Failure? initializingFailure,
      Failure? fetchMoreFailure,
      Failure? failure});

  $AuthCopyWith<$Res> get currentAuth;
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
    Object? currentAuth = null,
    Object? toys = null,
    Object? hasReachedMax = null,
    Object? isInitializing = null,
    Object? isLoading = null,
    Object? initializingFailure = freezed,
    Object? fetchMoreFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentAuth: null == currentAuth
          ? _value.currentAuth
          : currentAuth // ignore: cast_nullable_to_non_nullable
              as Auth,
      toys: null == toys
          ? _value.toys
          : toys // ignore: cast_nullable_to_non_nullable
              as List<ToyAndOwnerConsumer>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      initializingFailure: freezed == initializingFailure
          ? _value.initializingFailure
          : initializingFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      fetchMoreFailure: freezed == fetchMoreFailure
          ? _value.fetchMoreFailure
          : fetchMoreFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res> get currentAuth {
    return $AuthCopyWith<$Res>(_value.currentAuth, (value) {
      return _then(_value.copyWith(currentAuth: value) as $Val);
    });
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
  $Res call(
      {Auth currentAuth,
      List<ToyAndOwnerConsumer> toys,
      bool hasReachedMax,
      bool isInitializing,
      bool isLoading,
      Failure? initializingFailure,
      Failure? fetchMoreFailure,
      Failure? failure});

  @override
  $AuthCopyWith<$Res> get currentAuth;
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
    Object? currentAuth = null,
    Object? toys = null,
    Object? hasReachedMax = null,
    Object? isInitializing = null,
    Object? isLoading = null,
    Object? initializingFailure = freezed,
    Object? fetchMoreFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ToysStateImpl(
      currentAuth: null == currentAuth
          ? _value.currentAuth
          : currentAuth // ignore: cast_nullable_to_non_nullable
              as Auth,
      toys: null == toys
          ? _value._toys
          : toys // ignore: cast_nullable_to_non_nullable
              as List<ToyAndOwnerConsumer>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      initializingFailure: freezed == initializingFailure
          ? _value.initializingFailure
          : initializingFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      fetchMoreFailure: freezed == fetchMoreFailure
          ? _value.fetchMoreFailure
          : fetchMoreFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ToysStateImpl implements _ToysState {
  const _$ToysStateImpl(
      {required this.currentAuth,
      final List<ToyAndOwnerConsumer> toys = const [],
      this.hasReachedMax = false,
      this.isInitializing = true,
      this.isLoading = false,
      this.initializingFailure,
      this.fetchMoreFailure,
      this.failure})
      : _toys = toys;

  @override
  final Auth currentAuth;
  final List<ToyAndOwnerConsumer> _toys;
  @override
  @JsonKey()
  List<ToyAndOwnerConsumer> get toys {
    if (_toys is EqualUnmodifiableListView) return _toys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toys);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final bool isInitializing;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? initializingFailure;
  @override
  final Failure? fetchMoreFailure;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ToysState(currentAuth: $currentAuth, toys: $toys, hasReachedMax: $hasReachedMax, isInitializing: $isInitializing, isLoading: $isLoading, initializingFailure: $initializingFailure, fetchMoreFailure: $fetchMoreFailure, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToysStateImpl &&
            (identical(other.currentAuth, currentAuth) ||
                other.currentAuth == currentAuth) &&
            const DeepCollectionEquality().equals(other._toys, _toys) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.isInitializing, isInitializing) ||
                other.isInitializing == isInitializing) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.initializingFailure, initializingFailure) ||
                other.initializingFailure == initializingFailure) &&
            (identical(other.fetchMoreFailure, fetchMoreFailure) ||
                other.fetchMoreFailure == fetchMoreFailure) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentAuth,
      const DeepCollectionEquality().hash(_toys),
      hasReachedMax,
      isInitializing,
      isLoading,
      initializingFailure,
      fetchMoreFailure,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToysStateImplCopyWith<_$ToysStateImpl> get copyWith =>
      __$$ToysStateImplCopyWithImpl<_$ToysStateImpl>(this, _$identity);
}

abstract class _ToysState implements ToysState {
  const factory _ToysState(
      {required final Auth currentAuth,
      final List<ToyAndOwnerConsumer> toys,
      final bool hasReachedMax,
      final bool isInitializing,
      final bool isLoading,
      final Failure? initializingFailure,
      final Failure? fetchMoreFailure,
      final Failure? failure}) = _$ToysStateImpl;

  @override
  Auth get currentAuth;
  @override
  List<ToyAndOwnerConsumer> get toys;
  @override
  bool get hasReachedMax;
  @override
  bool get isInitializing;
  @override
  bool get isLoading;
  @override
  Failure? get initializingFailure;
  @override
  Failure? get fetchMoreFailure;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ToysStateImplCopyWith<_$ToysStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
