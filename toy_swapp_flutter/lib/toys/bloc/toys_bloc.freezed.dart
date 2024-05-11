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
    required TResult Function(bool isStartOver) fetchLikeableToys,
    required TResult Function(int toyID) likeToy,
    required TResult Function(int toyID) unlikeToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isStartOver)? fetchLikeableToys,
    TResult? Function(int toyID)? likeToy,
    TResult? Function(int toyID)? unlikeToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isStartOver)? fetchLikeableToys,
    TResult Function(int toyID)? likeToy,
    TResult Function(int toyID)? unlikeToy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetchLikeableToys value) fetchLikeableToys,
    required TResult Function(ToysLikeToy value) likeToy,
    required TResult Function(ToysUnlikeToy value) unlikeToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult? Function(ToysLikeToy value)? likeToy,
    TResult? Function(ToysUnlikeToy value)? unlikeToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult Function(ToysLikeToy value)? likeToy,
    TResult Function(ToysUnlikeToy value)? unlikeToy,
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
  $Res call({bool isStartOver});
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
    Object? isStartOver = null,
  }) {
    return _then(_$ToysFetchLikeableToysImpl(
      isStartOver: null == isStartOver
          ? _value.isStartOver
          : isStartOver // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToysFetchLikeableToysImpl implements ToysFetchLikeableToys {
  const _$ToysFetchLikeableToysImpl({this.isStartOver = false});

  @override
  @JsonKey()
  final bool isStartOver;

  @override
  String toString() {
    return 'ToysEvent.fetchLikeableToys(isStartOver: $isStartOver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToysFetchLikeableToysImpl &&
            (identical(other.isStartOver, isStartOver) ||
                other.isStartOver == isStartOver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isStartOver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToysFetchLikeableToysImplCopyWith<_$ToysFetchLikeableToysImpl>
      get copyWith => __$$ToysFetchLikeableToysImplCopyWithImpl<
          _$ToysFetchLikeableToysImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isStartOver) fetchLikeableToys,
    required TResult Function(int toyID) likeToy,
    required TResult Function(int toyID) unlikeToy,
  }) {
    return fetchLikeableToys(isStartOver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isStartOver)? fetchLikeableToys,
    TResult? Function(int toyID)? likeToy,
    TResult? Function(int toyID)? unlikeToy,
  }) {
    return fetchLikeableToys?.call(isStartOver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isStartOver)? fetchLikeableToys,
    TResult Function(int toyID)? likeToy,
    TResult Function(int toyID)? unlikeToy,
    required TResult orElse(),
  }) {
    if (fetchLikeableToys != null) {
      return fetchLikeableToys(isStartOver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetchLikeableToys value) fetchLikeableToys,
    required TResult Function(ToysLikeToy value) likeToy,
    required TResult Function(ToysUnlikeToy value) unlikeToy,
  }) {
    return fetchLikeableToys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult? Function(ToysLikeToy value)? likeToy,
    TResult? Function(ToysUnlikeToy value)? unlikeToy,
  }) {
    return fetchLikeableToys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult Function(ToysLikeToy value)? likeToy,
    TResult Function(ToysUnlikeToy value)? unlikeToy,
    required TResult orElse(),
  }) {
    if (fetchLikeableToys != null) {
      return fetchLikeableToys(this);
    }
    return orElse();
  }
}

abstract class ToysFetchLikeableToys implements ToysEvent {
  const factory ToysFetchLikeableToys({final bool isStartOver}) =
      _$ToysFetchLikeableToysImpl;

  bool get isStartOver;
  @JsonKey(ignore: true)
  _$$ToysFetchLikeableToysImplCopyWith<_$ToysFetchLikeableToysImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToysLikeToyImplCopyWith<$Res> {
  factory _$$ToysLikeToyImplCopyWith(
          _$ToysLikeToyImpl value, $Res Function(_$ToysLikeToyImpl) then) =
      __$$ToysLikeToyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int toyID});
}

/// @nodoc
class __$$ToysLikeToyImplCopyWithImpl<$Res>
    extends _$ToysEventCopyWithImpl<$Res, _$ToysLikeToyImpl>
    implements _$$ToysLikeToyImplCopyWith<$Res> {
  __$$ToysLikeToyImplCopyWithImpl(
      _$ToysLikeToyImpl _value, $Res Function(_$ToysLikeToyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toyID = null,
  }) {
    return _then(_$ToysLikeToyImpl(
      toyID: null == toyID
          ? _value.toyID
          : toyID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToysLikeToyImpl implements ToysLikeToy {
  const _$ToysLikeToyImpl({required this.toyID});

  @override
  final int toyID;

  @override
  String toString() {
    return 'ToysEvent.likeToy(toyID: $toyID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToysLikeToyImpl &&
            (identical(other.toyID, toyID) || other.toyID == toyID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toyID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToysLikeToyImplCopyWith<_$ToysLikeToyImpl> get copyWith =>
      __$$ToysLikeToyImplCopyWithImpl<_$ToysLikeToyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isStartOver) fetchLikeableToys,
    required TResult Function(int toyID) likeToy,
    required TResult Function(int toyID) unlikeToy,
  }) {
    return likeToy(toyID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isStartOver)? fetchLikeableToys,
    TResult? Function(int toyID)? likeToy,
    TResult? Function(int toyID)? unlikeToy,
  }) {
    return likeToy?.call(toyID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isStartOver)? fetchLikeableToys,
    TResult Function(int toyID)? likeToy,
    TResult Function(int toyID)? unlikeToy,
    required TResult orElse(),
  }) {
    if (likeToy != null) {
      return likeToy(toyID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetchLikeableToys value) fetchLikeableToys,
    required TResult Function(ToysLikeToy value) likeToy,
    required TResult Function(ToysUnlikeToy value) unlikeToy,
  }) {
    return likeToy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult? Function(ToysLikeToy value)? likeToy,
    TResult? Function(ToysUnlikeToy value)? unlikeToy,
  }) {
    return likeToy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult Function(ToysLikeToy value)? likeToy,
    TResult Function(ToysUnlikeToy value)? unlikeToy,
    required TResult orElse(),
  }) {
    if (likeToy != null) {
      return likeToy(this);
    }
    return orElse();
  }
}

abstract class ToysLikeToy implements ToysEvent {
  const factory ToysLikeToy({required final int toyID}) = _$ToysLikeToyImpl;

  int get toyID;
  @JsonKey(ignore: true)
  _$$ToysLikeToyImplCopyWith<_$ToysLikeToyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToysUnlikeToyImplCopyWith<$Res> {
  factory _$$ToysUnlikeToyImplCopyWith(
          _$ToysUnlikeToyImpl value, $Res Function(_$ToysUnlikeToyImpl) then) =
      __$$ToysUnlikeToyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int toyID});
}

/// @nodoc
class __$$ToysUnlikeToyImplCopyWithImpl<$Res>
    extends _$ToysEventCopyWithImpl<$Res, _$ToysUnlikeToyImpl>
    implements _$$ToysUnlikeToyImplCopyWith<$Res> {
  __$$ToysUnlikeToyImplCopyWithImpl(
      _$ToysUnlikeToyImpl _value, $Res Function(_$ToysUnlikeToyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toyID = null,
  }) {
    return _then(_$ToysUnlikeToyImpl(
      toyID: null == toyID
          ? _value.toyID
          : toyID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToysUnlikeToyImpl implements ToysUnlikeToy {
  const _$ToysUnlikeToyImpl({required this.toyID});

  @override
  final int toyID;

  @override
  String toString() {
    return 'ToysEvent.unlikeToy(toyID: $toyID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToysUnlikeToyImpl &&
            (identical(other.toyID, toyID) || other.toyID == toyID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toyID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToysUnlikeToyImplCopyWith<_$ToysUnlikeToyImpl> get copyWith =>
      __$$ToysUnlikeToyImplCopyWithImpl<_$ToysUnlikeToyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isStartOver) fetchLikeableToys,
    required TResult Function(int toyID) likeToy,
    required TResult Function(int toyID) unlikeToy,
  }) {
    return unlikeToy(toyID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isStartOver)? fetchLikeableToys,
    TResult? Function(int toyID)? likeToy,
    TResult? Function(int toyID)? unlikeToy,
  }) {
    return unlikeToy?.call(toyID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isStartOver)? fetchLikeableToys,
    TResult Function(int toyID)? likeToy,
    TResult Function(int toyID)? unlikeToy,
    required TResult orElse(),
  }) {
    if (unlikeToy != null) {
      return unlikeToy(toyID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToysFetchLikeableToys value) fetchLikeableToys,
    required TResult Function(ToysLikeToy value) likeToy,
    required TResult Function(ToysUnlikeToy value) unlikeToy,
  }) {
    return unlikeToy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult? Function(ToysLikeToy value)? likeToy,
    TResult? Function(ToysUnlikeToy value)? unlikeToy,
  }) {
    return unlikeToy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToysFetchLikeableToys value)? fetchLikeableToys,
    TResult Function(ToysLikeToy value)? likeToy,
    TResult Function(ToysUnlikeToy value)? unlikeToy,
    required TResult orElse(),
  }) {
    if (unlikeToy != null) {
      return unlikeToy(this);
    }
    return orElse();
  }
}

abstract class ToysUnlikeToy implements ToysEvent {
  const factory ToysUnlikeToy({required final int toyID}) = _$ToysUnlikeToyImpl;

  int get toyID;
  @JsonKey(ignore: true)
  _$$ToysUnlikeToyImplCopyWith<_$ToysUnlikeToyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToysState {
  Consumer get currentConsumer => throw _privateConstructorUsedError;
  List<ToyAndOwnerConsumer> get toys => throw _privateConstructorUsedError;
  List<int> get likedToyIDs => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get fetchFailure => throw _privateConstructorUsedError;
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
      {Consumer currentConsumer,
      List<ToyAndOwnerConsumer> toys,
      List<int> likedToyIDs,
      bool hasReachedMax,
      bool isLoading,
      Failure? fetchFailure,
      Failure? failure});
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
    Object? currentConsumer = null,
    Object? toys = null,
    Object? likedToyIDs = null,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? fetchFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
      toys: null == toys
          ? _value.toys
          : toys // ignore: cast_nullable_to_non_nullable
              as List<ToyAndOwnerConsumer>,
      likedToyIDs: null == likedToyIDs
          ? _value.likedToyIDs
          : likedToyIDs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchFailure: freezed == fetchFailure
          ? _value.fetchFailure
          : fetchFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
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
  $Res call(
      {Consumer currentConsumer,
      List<ToyAndOwnerConsumer> toys,
      List<int> likedToyIDs,
      bool hasReachedMax,
      bool isLoading,
      Failure? fetchFailure,
      Failure? failure});
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
    Object? currentConsumer = null,
    Object? toys = null,
    Object? likedToyIDs = null,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? fetchFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ToysStateImpl(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
      toys: null == toys
          ? _value._toys
          : toys // ignore: cast_nullable_to_non_nullable
              as List<ToyAndOwnerConsumer>,
      likedToyIDs: null == likedToyIDs
          ? _value._likedToyIDs
          : likedToyIDs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchFailure: freezed == fetchFailure
          ? _value.fetchFailure
          : fetchFailure // ignore: cast_nullable_to_non_nullable
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
      {required this.currentConsumer,
      final List<ToyAndOwnerConsumer> toys = const [],
      final List<int> likedToyIDs = const [],
      this.hasReachedMax = false,
      this.isLoading = false,
      this.fetchFailure,
      this.failure})
      : _toys = toys,
        _likedToyIDs = likedToyIDs;

  @override
  final Consumer currentConsumer;
  final List<ToyAndOwnerConsumer> _toys;
  @override
  @JsonKey()
  List<ToyAndOwnerConsumer> get toys {
    if (_toys is EqualUnmodifiableListView) return _toys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toys);
  }

  final List<int> _likedToyIDs;
  @override
  @JsonKey()
  List<int> get likedToyIDs {
    if (_likedToyIDs is EqualUnmodifiableListView) return _likedToyIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedToyIDs);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? fetchFailure;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ToysState(currentConsumer: $currentConsumer, toys: $toys, likedToyIDs: $likedToyIDs, hasReachedMax: $hasReachedMax, isLoading: $isLoading, fetchFailure: $fetchFailure, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToysStateImpl &&
            (identical(other.currentConsumer, currentConsumer) ||
                other.currentConsumer == currentConsumer) &&
            const DeepCollectionEquality().equals(other._toys, _toys) &&
            const DeepCollectionEquality()
                .equals(other._likedToyIDs, _likedToyIDs) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.fetchFailure, fetchFailure) ||
                other.fetchFailure == fetchFailure) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentConsumer,
      const DeepCollectionEquality().hash(_toys),
      const DeepCollectionEquality().hash(_likedToyIDs),
      hasReachedMax,
      isLoading,
      fetchFailure,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToysStateImplCopyWith<_$ToysStateImpl> get copyWith =>
      __$$ToysStateImplCopyWithImpl<_$ToysStateImpl>(this, _$identity);
}

abstract class _ToysState implements ToysState {
  const factory _ToysState(
      {required final Consumer currentConsumer,
      final List<ToyAndOwnerConsumer> toys,
      final List<int> likedToyIDs,
      final bool hasReachedMax,
      final bool isLoading,
      final Failure? fetchFailure,
      final Failure? failure}) = _$ToysStateImpl;

  @override
  Consumer get currentConsumer;
  @override
  List<ToyAndOwnerConsumer> get toys;
  @override
  List<int> get likedToyIDs;
  @override
  bool get hasReachedMax;
  @override
  bool get isLoading;
  @override
  Failure? get fetchFailure;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ToysStateImplCopyWith<_$ToysStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
