// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toy_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToyDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer? updatedConsumer) currentConsumerUpdated,
    required TResult Function(int toyID) loadToyAndOwner,
    required TResult Function(int toyID) deleteOwnedToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer? updatedConsumer)? currentConsumerUpdated,
    TResult? Function(int toyID)? loadToyAndOwner,
    TResult? Function(int toyID)? deleteOwnedToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer? updatedConsumer)? currentConsumerUpdated,
    TResult Function(int toyID)? loadToyAndOwner,
    TResult Function(int toyID)? deleteOwnedToy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToyDetailCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(ToyDetailLoadToyAndOwner value) loadToyAndOwner,
    required TResult Function(ToyDetailDeleteOwnedToy value) deleteOwnedToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    TResult? Function(ToyDetailDeleteOwnedToy value)? deleteOwnedToy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    TResult Function(ToyDetailDeleteOwnedToy value)? deleteOwnedToy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToyDetailEventCopyWith<$Res> {
  factory $ToyDetailEventCopyWith(
          ToyDetailEvent value, $Res Function(ToyDetailEvent) then) =
      _$ToyDetailEventCopyWithImpl<$Res, ToyDetailEvent>;
}

/// @nodoc
class _$ToyDetailEventCopyWithImpl<$Res, $Val extends ToyDetailEvent>
    implements $ToyDetailEventCopyWith<$Res> {
  _$ToyDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToyDetailCurrentConsumerUpdatedImplCopyWith<$Res> {
  factory _$$ToyDetailCurrentConsumerUpdatedImplCopyWith(
          _$ToyDetailCurrentConsumerUpdatedImpl value,
          $Res Function(_$ToyDetailCurrentConsumerUpdatedImpl) then) =
      __$$ToyDetailCurrentConsumerUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Consumer? updatedConsumer});
}

/// @nodoc
class __$$ToyDetailCurrentConsumerUpdatedImplCopyWithImpl<$Res>
    extends _$ToyDetailEventCopyWithImpl<$Res,
        _$ToyDetailCurrentConsumerUpdatedImpl>
    implements _$$ToyDetailCurrentConsumerUpdatedImplCopyWith<$Res> {
  __$$ToyDetailCurrentConsumerUpdatedImplCopyWithImpl(
      _$ToyDetailCurrentConsumerUpdatedImpl _value,
      $Res Function(_$ToyDetailCurrentConsumerUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedConsumer = freezed,
  }) {
    return _then(_$ToyDetailCurrentConsumerUpdatedImpl(
      freezed == updatedConsumer
          ? _value.updatedConsumer
          : updatedConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer?,
    ));
  }
}

/// @nodoc

class _$ToyDetailCurrentConsumerUpdatedImpl
    implements ToyDetailCurrentConsumerUpdated {
  const _$ToyDetailCurrentConsumerUpdatedImpl(this.updatedConsumer);

  @override
  final Consumer? updatedConsumer;

  @override
  String toString() {
    return 'ToyDetailEvent.currentConsumerUpdated(updatedConsumer: $updatedConsumer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailCurrentConsumerUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other.updatedConsumer, updatedConsumer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedConsumer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyDetailCurrentConsumerUpdatedImplCopyWith<
          _$ToyDetailCurrentConsumerUpdatedImpl>
      get copyWith => __$$ToyDetailCurrentConsumerUpdatedImplCopyWithImpl<
          _$ToyDetailCurrentConsumerUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer? updatedConsumer) currentConsumerUpdated,
    required TResult Function(int toyID) loadToyAndOwner,
    required TResult Function(int toyID) deleteOwnedToy,
  }) {
    return currentConsumerUpdated(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer? updatedConsumer)? currentConsumerUpdated,
    TResult? Function(int toyID)? loadToyAndOwner,
    TResult? Function(int toyID)? deleteOwnedToy,
  }) {
    return currentConsumerUpdated?.call(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer? updatedConsumer)? currentConsumerUpdated,
    TResult Function(int toyID)? loadToyAndOwner,
    TResult Function(int toyID)? deleteOwnedToy,
    required TResult orElse(),
  }) {
    if (currentConsumerUpdated != null) {
      return currentConsumerUpdated(updatedConsumer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToyDetailCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(ToyDetailLoadToyAndOwner value) loadToyAndOwner,
    required TResult Function(ToyDetailDeleteOwnedToy value) deleteOwnedToy,
  }) {
    return currentConsumerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    TResult? Function(ToyDetailDeleteOwnedToy value)? deleteOwnedToy,
  }) {
    return currentConsumerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    TResult Function(ToyDetailDeleteOwnedToy value)? deleteOwnedToy,
    required TResult orElse(),
  }) {
    if (currentConsumerUpdated != null) {
      return currentConsumerUpdated(this);
    }
    return orElse();
  }
}

abstract class ToyDetailCurrentConsumerUpdated implements ToyDetailEvent {
  const factory ToyDetailCurrentConsumerUpdated(
      final Consumer? updatedConsumer) = _$ToyDetailCurrentConsumerUpdatedImpl;

  Consumer? get updatedConsumer;
  @JsonKey(ignore: true)
  _$$ToyDetailCurrentConsumerUpdatedImplCopyWith<
          _$ToyDetailCurrentConsumerUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToyDetailLoadToyAndOwnerImplCopyWith<$Res> {
  factory _$$ToyDetailLoadToyAndOwnerImplCopyWith(
          _$ToyDetailLoadToyAndOwnerImpl value,
          $Res Function(_$ToyDetailLoadToyAndOwnerImpl) then) =
      __$$ToyDetailLoadToyAndOwnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int toyID});
}

/// @nodoc
class __$$ToyDetailLoadToyAndOwnerImplCopyWithImpl<$Res>
    extends _$ToyDetailEventCopyWithImpl<$Res, _$ToyDetailLoadToyAndOwnerImpl>
    implements _$$ToyDetailLoadToyAndOwnerImplCopyWith<$Res> {
  __$$ToyDetailLoadToyAndOwnerImplCopyWithImpl(
      _$ToyDetailLoadToyAndOwnerImpl _value,
      $Res Function(_$ToyDetailLoadToyAndOwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toyID = null,
  }) {
    return _then(_$ToyDetailLoadToyAndOwnerImpl(
      toyID: null == toyID
          ? _value.toyID
          : toyID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToyDetailLoadToyAndOwnerImpl implements ToyDetailLoadToyAndOwner {
  const _$ToyDetailLoadToyAndOwnerImpl({required this.toyID});

  @override
  final int toyID;

  @override
  String toString() {
    return 'ToyDetailEvent.loadToyAndOwner(toyID: $toyID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailLoadToyAndOwnerImpl &&
            (identical(other.toyID, toyID) || other.toyID == toyID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toyID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyDetailLoadToyAndOwnerImplCopyWith<_$ToyDetailLoadToyAndOwnerImpl>
      get copyWith => __$$ToyDetailLoadToyAndOwnerImplCopyWithImpl<
          _$ToyDetailLoadToyAndOwnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer? updatedConsumer) currentConsumerUpdated,
    required TResult Function(int toyID) loadToyAndOwner,
    required TResult Function(int toyID) deleteOwnedToy,
  }) {
    return loadToyAndOwner(toyID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer? updatedConsumer)? currentConsumerUpdated,
    TResult? Function(int toyID)? loadToyAndOwner,
    TResult? Function(int toyID)? deleteOwnedToy,
  }) {
    return loadToyAndOwner?.call(toyID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer? updatedConsumer)? currentConsumerUpdated,
    TResult Function(int toyID)? loadToyAndOwner,
    TResult Function(int toyID)? deleteOwnedToy,
    required TResult orElse(),
  }) {
    if (loadToyAndOwner != null) {
      return loadToyAndOwner(toyID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToyDetailCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(ToyDetailLoadToyAndOwner value) loadToyAndOwner,
    required TResult Function(ToyDetailDeleteOwnedToy value) deleteOwnedToy,
  }) {
    return loadToyAndOwner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    TResult? Function(ToyDetailDeleteOwnedToy value)? deleteOwnedToy,
  }) {
    return loadToyAndOwner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    TResult Function(ToyDetailDeleteOwnedToy value)? deleteOwnedToy,
    required TResult orElse(),
  }) {
    if (loadToyAndOwner != null) {
      return loadToyAndOwner(this);
    }
    return orElse();
  }
}

abstract class ToyDetailLoadToyAndOwner implements ToyDetailEvent {
  const factory ToyDetailLoadToyAndOwner({required final int toyID}) =
      _$ToyDetailLoadToyAndOwnerImpl;

  int get toyID;
  @JsonKey(ignore: true)
  _$$ToyDetailLoadToyAndOwnerImplCopyWith<_$ToyDetailLoadToyAndOwnerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToyDetailDeleteOwnedToyImplCopyWith<$Res> {
  factory _$$ToyDetailDeleteOwnedToyImplCopyWith(
          _$ToyDetailDeleteOwnedToyImpl value,
          $Res Function(_$ToyDetailDeleteOwnedToyImpl) then) =
      __$$ToyDetailDeleteOwnedToyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int toyID});
}

/// @nodoc
class __$$ToyDetailDeleteOwnedToyImplCopyWithImpl<$Res>
    extends _$ToyDetailEventCopyWithImpl<$Res, _$ToyDetailDeleteOwnedToyImpl>
    implements _$$ToyDetailDeleteOwnedToyImplCopyWith<$Res> {
  __$$ToyDetailDeleteOwnedToyImplCopyWithImpl(
      _$ToyDetailDeleteOwnedToyImpl _value,
      $Res Function(_$ToyDetailDeleteOwnedToyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toyID = null,
  }) {
    return _then(_$ToyDetailDeleteOwnedToyImpl(
      toyID: null == toyID
          ? _value.toyID
          : toyID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToyDetailDeleteOwnedToyImpl implements ToyDetailDeleteOwnedToy {
  const _$ToyDetailDeleteOwnedToyImpl({required this.toyID});

  @override
  final int toyID;

  @override
  String toString() {
    return 'ToyDetailEvent.deleteOwnedToy(toyID: $toyID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailDeleteOwnedToyImpl &&
            (identical(other.toyID, toyID) || other.toyID == toyID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toyID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyDetailDeleteOwnedToyImplCopyWith<_$ToyDetailDeleteOwnedToyImpl>
      get copyWith => __$$ToyDetailDeleteOwnedToyImplCopyWithImpl<
          _$ToyDetailDeleteOwnedToyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer? updatedConsumer) currentConsumerUpdated,
    required TResult Function(int toyID) loadToyAndOwner,
    required TResult Function(int toyID) deleteOwnedToy,
  }) {
    return deleteOwnedToy(toyID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer? updatedConsumer)? currentConsumerUpdated,
    TResult? Function(int toyID)? loadToyAndOwner,
    TResult? Function(int toyID)? deleteOwnedToy,
  }) {
    return deleteOwnedToy?.call(toyID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer? updatedConsumer)? currentConsumerUpdated,
    TResult Function(int toyID)? loadToyAndOwner,
    TResult Function(int toyID)? deleteOwnedToy,
    required TResult orElse(),
  }) {
    if (deleteOwnedToy != null) {
      return deleteOwnedToy(toyID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToyDetailCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(ToyDetailLoadToyAndOwner value) loadToyAndOwner,
    required TResult Function(ToyDetailDeleteOwnedToy value) deleteOwnedToy,
  }) {
    return deleteOwnedToy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    TResult? Function(ToyDetailDeleteOwnedToy value)? deleteOwnedToy,
  }) {
    return deleteOwnedToy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    TResult Function(ToyDetailDeleteOwnedToy value)? deleteOwnedToy,
    required TResult orElse(),
  }) {
    if (deleteOwnedToy != null) {
      return deleteOwnedToy(this);
    }
    return orElse();
  }
}

abstract class ToyDetailDeleteOwnedToy implements ToyDetailEvent {
  const factory ToyDetailDeleteOwnedToy({required final int toyID}) =
      _$ToyDetailDeleteOwnedToyImpl;

  int get toyID;
  @JsonKey(ignore: true)
  _$$ToyDetailDeleteOwnedToyImplCopyWith<_$ToyDetailDeleteOwnedToyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToyDetailState {
  Consumer? get currentConsumer => throw _privateConstructorUsedError;
  Toy? get toy => throw _privateConstructorUsedError;
  Consumer? get ownerConsumer => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isToyDeleted => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToyDetailStateCopyWith<ToyDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToyDetailStateCopyWith<$Res> {
  factory $ToyDetailStateCopyWith(
          ToyDetailState value, $Res Function(ToyDetailState) then) =
      _$ToyDetailStateCopyWithImpl<$Res, ToyDetailState>;
  @useResult
  $Res call(
      {Consumer? currentConsumer,
      Toy? toy,
      Consumer? ownerConsumer,
      bool isLoading,
      bool isToyDeleted,
      Failure? failure});
}

/// @nodoc
class _$ToyDetailStateCopyWithImpl<$Res, $Val extends ToyDetailState>
    implements $ToyDetailStateCopyWith<$Res> {
  _$ToyDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConsumer = freezed,
    Object? toy = freezed,
    Object? ownerConsumer = freezed,
    Object? isLoading = null,
    Object? isToyDeleted = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentConsumer: freezed == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer?,
      toy: freezed == toy
          ? _value.toy
          : toy // ignore: cast_nullable_to_non_nullable
              as Toy?,
      ownerConsumer: freezed == ownerConsumer
          ? _value.ownerConsumer
          : ownerConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isToyDeleted: null == isToyDeleted
          ? _value.isToyDeleted
          : isToyDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToyDetailStateImplCopyWith<$Res>
    implements $ToyDetailStateCopyWith<$Res> {
  factory _$$ToyDetailStateImplCopyWith(_$ToyDetailStateImpl value,
          $Res Function(_$ToyDetailStateImpl) then) =
      __$$ToyDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Consumer? currentConsumer,
      Toy? toy,
      Consumer? ownerConsumer,
      bool isLoading,
      bool isToyDeleted,
      Failure? failure});
}

/// @nodoc
class __$$ToyDetailStateImplCopyWithImpl<$Res>
    extends _$ToyDetailStateCopyWithImpl<$Res, _$ToyDetailStateImpl>
    implements _$$ToyDetailStateImplCopyWith<$Res> {
  __$$ToyDetailStateImplCopyWithImpl(
      _$ToyDetailStateImpl _value, $Res Function(_$ToyDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConsumer = freezed,
    Object? toy = freezed,
    Object? ownerConsumer = freezed,
    Object? isLoading = null,
    Object? isToyDeleted = null,
    Object? failure = freezed,
  }) {
    return _then(_$ToyDetailStateImpl(
      currentConsumer: freezed == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer?,
      toy: freezed == toy
          ? _value.toy
          : toy // ignore: cast_nullable_to_non_nullable
              as Toy?,
      ownerConsumer: freezed == ownerConsumer
          ? _value.ownerConsumer
          : ownerConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isToyDeleted: null == isToyDeleted
          ? _value.isToyDeleted
          : isToyDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ToyDetailStateImpl implements _ToyDetailState {
  const _$ToyDetailStateImpl(
      {required this.currentConsumer,
      this.toy,
      this.ownerConsumer,
      this.isLoading = false,
      this.isToyDeleted = false,
      this.failure});

  @override
  final Consumer? currentConsumer;
  @override
  final Toy? toy;
  @override
  final Consumer? ownerConsumer;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isToyDeleted;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ToyDetailState(currentConsumer: $currentConsumer, toy: $toy, ownerConsumer: $ownerConsumer, isLoading: $isLoading, isToyDeleted: $isToyDeleted, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailStateImpl &&
            const DeepCollectionEquality()
                .equals(other.currentConsumer, currentConsumer) &&
            (identical(other.toy, toy) || other.toy == toy) &&
            const DeepCollectionEquality()
                .equals(other.ownerConsumer, ownerConsumer) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isToyDeleted, isToyDeleted) ||
                other.isToyDeleted == isToyDeleted) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentConsumer),
      toy,
      const DeepCollectionEquality().hash(ownerConsumer),
      isLoading,
      isToyDeleted,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyDetailStateImplCopyWith<_$ToyDetailStateImpl> get copyWith =>
      __$$ToyDetailStateImplCopyWithImpl<_$ToyDetailStateImpl>(
          this, _$identity);
}

abstract class _ToyDetailState implements ToyDetailState {
  const factory _ToyDetailState(
      {required final Consumer? currentConsumer,
      final Toy? toy,
      final Consumer? ownerConsumer,
      final bool isLoading,
      final bool isToyDeleted,
      final Failure? failure}) = _$ToyDetailStateImpl;

  @override
  Consumer? get currentConsumer;
  @override
  Toy? get toy;
  @override
  Consumer? get ownerConsumer;
  @override
  bool get isLoading;
  @override
  bool get isToyDeleted;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ToyDetailStateImplCopyWith<_$ToyDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
