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
    required TResult Function(bool isRefresh) fetchAcceptableToys,
    required TResult Function(Toy toy) acceptToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? fetchAcceptableToys,
    TResult? Function(Toy toy)? acceptToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? fetchAcceptableToys,
    TResult Function(Toy toy)? acceptToy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SupportToyAcceptanceEventFetchAcceptableToys value)
        fetchAcceptableToys,
    required TResult Function(SupportToyAcceptanceEventAcceptToy value)
        acceptToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceEventFetchAcceptableToys value)?
        fetchAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventAcceptToy value)? acceptToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceEventFetchAcceptableToys value)?
        fetchAcceptableToys,
    TResult Function(SupportToyAcceptanceEventAcceptToy value)? acceptToy,
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
abstract class _$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWith<
    $Res> {
  factory _$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWith(
          _$SupportToyAcceptanceEventFetchAcceptableToysImpl value,
          $Res Function(_$SupportToyAcceptanceEventFetchAcceptableToysImpl)
              then) =
      __$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWithImpl<$Res>
    extends _$SupportToyAcceptanceEventCopyWithImpl<$Res,
        _$SupportToyAcceptanceEventFetchAcceptableToysImpl>
    implements
        _$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWith<$Res> {
  __$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWithImpl(
      _$SupportToyAcceptanceEventFetchAcceptableToysImpl _value,
      $Res Function(_$SupportToyAcceptanceEventFetchAcceptableToysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_$SupportToyAcceptanceEventFetchAcceptableToysImpl(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SupportToyAcceptanceEventFetchAcceptableToysImpl
    implements SupportToyAcceptanceEventFetchAcceptableToys {
  const _$SupportToyAcceptanceEventFetchAcceptableToysImpl(
      {this.isRefresh = false});

  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'SupportToyAcceptanceEvent.fetchAcceptableToys(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceEventFetchAcceptableToysImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWith<
          _$SupportToyAcceptanceEventFetchAcceptableToysImpl>
      get copyWith =>
          __$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWithImpl<
                  _$SupportToyAcceptanceEventFetchAcceptableToysImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) fetchAcceptableToys,
    required TResult Function(Toy toy) acceptToy,
  }) {
    return fetchAcceptableToys(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? fetchAcceptableToys,
    TResult? Function(Toy toy)? acceptToy,
  }) {
    return fetchAcceptableToys?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? fetchAcceptableToys,
    TResult Function(Toy toy)? acceptToy,
    required TResult orElse(),
  }) {
    if (fetchAcceptableToys != null) {
      return fetchAcceptableToys(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SupportToyAcceptanceEventFetchAcceptableToys value)
        fetchAcceptableToys,
    required TResult Function(SupportToyAcceptanceEventAcceptToy value)
        acceptToy,
  }) {
    return fetchAcceptableToys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceEventFetchAcceptableToys value)?
        fetchAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventAcceptToy value)? acceptToy,
  }) {
    return fetchAcceptableToys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceEventFetchAcceptableToys value)?
        fetchAcceptableToys,
    TResult Function(SupportToyAcceptanceEventAcceptToy value)? acceptToy,
    required TResult orElse(),
  }) {
    if (fetchAcceptableToys != null) {
      return fetchAcceptableToys(this);
    }
    return orElse();
  }
}

abstract class SupportToyAcceptanceEventFetchAcceptableToys
    implements SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceEventFetchAcceptableToys(
          {final bool isRefresh}) =
      _$SupportToyAcceptanceEventFetchAcceptableToysImpl;

  bool get isRefresh;
  @JsonKey(ignore: true)
  _$$SupportToyAcceptanceEventFetchAcceptableToysImplCopyWith<
          _$SupportToyAcceptanceEventFetchAcceptableToysImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupportToyAcceptanceEventAcceptToyImplCopyWith<$Res> {
  factory _$$SupportToyAcceptanceEventAcceptToyImplCopyWith(
          _$SupportToyAcceptanceEventAcceptToyImpl value,
          $Res Function(_$SupportToyAcceptanceEventAcceptToyImpl) then) =
      __$$SupportToyAcceptanceEventAcceptToyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Toy toy});
}

/// @nodoc
class __$$SupportToyAcceptanceEventAcceptToyImplCopyWithImpl<$Res>
    extends _$SupportToyAcceptanceEventCopyWithImpl<$Res,
        _$SupportToyAcceptanceEventAcceptToyImpl>
    implements _$$SupportToyAcceptanceEventAcceptToyImplCopyWith<$Res> {
  __$$SupportToyAcceptanceEventAcceptToyImplCopyWithImpl(
      _$SupportToyAcceptanceEventAcceptToyImpl _value,
      $Res Function(_$SupportToyAcceptanceEventAcceptToyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toy = null,
  }) {
    return _then(_$SupportToyAcceptanceEventAcceptToyImpl(
      null == toy
          ? _value.toy
          : toy // ignore: cast_nullable_to_non_nullable
              as Toy,
    ));
  }
}

/// @nodoc

class _$SupportToyAcceptanceEventAcceptToyImpl
    implements SupportToyAcceptanceEventAcceptToy {
  const _$SupportToyAcceptanceEventAcceptToyImpl(this.toy);

  @override
  final Toy toy;

  @override
  String toString() {
    return 'SupportToyAcceptanceEvent.acceptToy(toy: $toy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceEventAcceptToyImpl &&
            (identical(other.toy, toy) || other.toy == toy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportToyAcceptanceEventAcceptToyImplCopyWith<
          _$SupportToyAcceptanceEventAcceptToyImpl>
      get copyWith => __$$SupportToyAcceptanceEventAcceptToyImplCopyWithImpl<
          _$SupportToyAcceptanceEventAcceptToyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) fetchAcceptableToys,
    required TResult Function(Toy toy) acceptToy,
  }) {
    return acceptToy(toy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? fetchAcceptableToys,
    TResult? Function(Toy toy)? acceptToy,
  }) {
    return acceptToy?.call(toy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? fetchAcceptableToys,
    TResult Function(Toy toy)? acceptToy,
    required TResult orElse(),
  }) {
    if (acceptToy != null) {
      return acceptToy(toy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SupportToyAcceptanceEventFetchAcceptableToys value)
        fetchAcceptableToys,
    required TResult Function(SupportToyAcceptanceEventAcceptToy value)
        acceptToy,
  }) {
    return acceptToy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceEventFetchAcceptableToys value)?
        fetchAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventAcceptToy value)? acceptToy,
  }) {
    return acceptToy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceEventFetchAcceptableToys value)?
        fetchAcceptableToys,
    TResult Function(SupportToyAcceptanceEventAcceptToy value)? acceptToy,
    required TResult orElse(),
  }) {
    if (acceptToy != null) {
      return acceptToy(this);
    }
    return orElse();
  }
}

abstract class SupportToyAcceptanceEventAcceptToy
    implements SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceEventAcceptToy(final Toy toy) =
      _$SupportToyAcceptanceEventAcceptToyImpl;

  Toy get toy;
  @JsonKey(ignore: true)
  _$$SupportToyAcceptanceEventAcceptToyImplCopyWith<
          _$SupportToyAcceptanceEventAcceptToyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SupportToyAcceptanceState {
  String get authID => throw _privateConstructorUsedError;
  List<ToyAndOwnerConsumer> get acceptableToys =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get fetchFailure => throw _privateConstructorUsedError;
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
  $Res call(
      {String authID,
      List<ToyAndOwnerConsumer> acceptableToys,
      bool isFetching,
      bool hasReachedMax,
      bool isLoading,
      Failure? fetchFailure,
      Failure? failure});
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
    Object? authID = null,
    Object? acceptableToys = null,
    Object? isFetching = null,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? fetchFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      authID: null == authID
          ? _value.authID
          : authID // ignore: cast_nullable_to_non_nullable
              as String,
      acceptableToys: null == acceptableToys
          ? _value.acceptableToys
          : acceptableToys // ignore: cast_nullable_to_non_nullable
              as List<ToyAndOwnerConsumer>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$SupportToyAcceptanceStateImplCopyWith<$Res>
    implements $SupportToyAcceptanceStateCopyWith<$Res> {
  factory _$$SupportToyAcceptanceStateImplCopyWith(
          _$SupportToyAcceptanceStateImpl value,
          $Res Function(_$SupportToyAcceptanceStateImpl) then) =
      __$$SupportToyAcceptanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authID,
      List<ToyAndOwnerConsumer> acceptableToys,
      bool isFetching,
      bool hasReachedMax,
      bool isLoading,
      Failure? fetchFailure,
      Failure? failure});
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
    Object? authID = null,
    Object? acceptableToys = null,
    Object? isFetching = null,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? fetchFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$SupportToyAcceptanceStateImpl(
      authID: null == authID
          ? _value.authID
          : authID // ignore: cast_nullable_to_non_nullable
              as String,
      acceptableToys: null == acceptableToys
          ? _value._acceptableToys
          : acceptableToys // ignore: cast_nullable_to_non_nullable
              as List<ToyAndOwnerConsumer>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$SupportToyAcceptanceStateImpl implements _SupportToyAcceptanceState {
  const _$SupportToyAcceptanceStateImpl(
      {required this.authID,
      final List<ToyAndOwnerConsumer> acceptableToys = const [],
      this.isFetching = false,
      this.hasReachedMax = false,
      this.isLoading = false,
      this.fetchFailure,
      this.failure})
      : _acceptableToys = acceptableToys;

  @override
  final String authID;
  final List<ToyAndOwnerConsumer> _acceptableToys;
  @override
  @JsonKey()
  List<ToyAndOwnerConsumer> get acceptableToys {
    if (_acceptableToys is EqualUnmodifiableListView) return _acceptableToys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_acceptableToys);
  }

  @override
  @JsonKey()
  final bool isFetching;
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
    return 'SupportToyAcceptanceState(authID: $authID, acceptableToys: $acceptableToys, isFetching: $isFetching, hasReachedMax: $hasReachedMax, isLoading: $isLoading, fetchFailure: $fetchFailure, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceStateImpl &&
            (identical(other.authID, authID) || other.authID == authID) &&
            const DeepCollectionEquality()
                .equals(other._acceptableToys, _acceptableToys) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
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
      authID,
      const DeepCollectionEquality().hash(_acceptableToys),
      isFetching,
      hasReachedMax,
      isLoading,
      fetchFailure,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportToyAcceptanceStateImplCopyWith<_$SupportToyAcceptanceStateImpl>
      get copyWith => __$$SupportToyAcceptanceStateImplCopyWithImpl<
          _$SupportToyAcceptanceStateImpl>(this, _$identity);
}

abstract class _SupportToyAcceptanceState implements SupportToyAcceptanceState {
  const factory _SupportToyAcceptanceState(
      {required final String authID,
      final List<ToyAndOwnerConsumer> acceptableToys,
      final bool isFetching,
      final bool hasReachedMax,
      final bool isLoading,
      final Failure? fetchFailure,
      final Failure? failure}) = _$SupportToyAcceptanceStateImpl;

  @override
  String get authID;
  @override
  List<ToyAndOwnerConsumer> get acceptableToys;
  @override
  bool get isFetching;
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
  _$$SupportToyAcceptanceStateImplCopyWith<_$SupportToyAcceptanceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
