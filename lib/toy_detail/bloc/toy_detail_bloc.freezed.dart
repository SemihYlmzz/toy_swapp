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
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(String toyId) loadToyAndOwner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(String toyId)? loadToyAndOwner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(String toyId)? loadToyAndOwner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToyDetailCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(ToyDetailLoadToyAndOwner value) loadToyAndOwner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
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
  $Res call({Consumer updatedConsumer});

  $ConsumerCopyWith<$Res> get updatedConsumer;
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
    Object? updatedConsumer = null,
  }) {
    return _then(_$ToyDetailCurrentConsumerUpdatedImpl(
      null == updatedConsumer
          ? _value.updatedConsumer
          : updatedConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsumerCopyWith<$Res> get updatedConsumer {
    return $ConsumerCopyWith<$Res>(_value.updatedConsumer, (value) {
      return _then(_value.copyWith(updatedConsumer: value));
    });
  }
}

/// @nodoc

class _$ToyDetailCurrentConsumerUpdatedImpl
    implements ToyDetailCurrentConsumerUpdated {
  const _$ToyDetailCurrentConsumerUpdatedImpl(this.updatedConsumer);

  @override
  final Consumer updatedConsumer;

  @override
  String toString() {
    return 'ToyDetailEvent.currentConsumerUpdated(updatedConsumer: $updatedConsumer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailCurrentConsumerUpdatedImpl &&
            (identical(other.updatedConsumer, updatedConsumer) ||
                other.updatedConsumer == updatedConsumer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedConsumer);

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
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(String toyId) loadToyAndOwner,
  }) {
    return currentConsumerUpdated(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(String toyId)? loadToyAndOwner,
  }) {
    return currentConsumerUpdated?.call(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(String toyId)? loadToyAndOwner,
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
  }) {
    return currentConsumerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
  }) {
    return currentConsumerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
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
      final Consumer updatedConsumer) = _$ToyDetailCurrentConsumerUpdatedImpl;

  Consumer get updatedConsumer;
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
  $Res call({String toyId});
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
    Object? toyId = null,
  }) {
    return _then(_$ToyDetailLoadToyAndOwnerImpl(
      toyId: null == toyId
          ? _value.toyId
          : toyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToyDetailLoadToyAndOwnerImpl implements ToyDetailLoadToyAndOwner {
  const _$ToyDetailLoadToyAndOwnerImpl({required this.toyId});

  @override
  final String toyId;

  @override
  String toString() {
    return 'ToyDetailEvent.loadToyAndOwner(toyId: $toyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailLoadToyAndOwnerImpl &&
            (identical(other.toyId, toyId) || other.toyId == toyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyDetailLoadToyAndOwnerImplCopyWith<_$ToyDetailLoadToyAndOwnerImpl>
      get copyWith => __$$ToyDetailLoadToyAndOwnerImplCopyWithImpl<
          _$ToyDetailLoadToyAndOwnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(String toyId) loadToyAndOwner,
  }) {
    return loadToyAndOwner(toyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(String toyId)? loadToyAndOwner,
  }) {
    return loadToyAndOwner?.call(toyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(String toyId)? loadToyAndOwner,
    required TResult orElse(),
  }) {
    if (loadToyAndOwner != null) {
      return loadToyAndOwner(toyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToyDetailCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(ToyDetailLoadToyAndOwner value) loadToyAndOwner,
  }) {
    return loadToyAndOwner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
  }) {
    return loadToyAndOwner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyAndOwner value)? loadToyAndOwner,
    required TResult orElse(),
  }) {
    if (loadToyAndOwner != null) {
      return loadToyAndOwner(this);
    }
    return orElse();
  }
}

abstract class ToyDetailLoadToyAndOwner implements ToyDetailEvent {
  const factory ToyDetailLoadToyAndOwner({required final String toyId}) =
      _$ToyDetailLoadToyAndOwnerImpl;

  String get toyId;
  @JsonKey(ignore: true)
  _$$ToyDetailLoadToyAndOwnerImplCopyWith<_$ToyDetailLoadToyAndOwnerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToyDetailState {
  Consumer get currentConsumer => throw _privateConstructorUsedError;
  Toy? get toy => throw _privateConstructorUsedError;
  Consumer? get ownerConsumer => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
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
      {Consumer currentConsumer,
      Toy? toy,
      Consumer? ownerConsumer,
      bool isLoading,
      Failure? failure});

  $ConsumerCopyWith<$Res> get currentConsumer;
  $ToyCopyWith<$Res>? get toy;
  $ConsumerCopyWith<$Res>? get ownerConsumer;
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
    Object? currentConsumer = null,
    Object? toy = freezed,
    Object? ownerConsumer = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
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
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsumerCopyWith<$Res> get currentConsumer {
    return $ConsumerCopyWith<$Res>(_value.currentConsumer, (value) {
      return _then(_value.copyWith(currentConsumer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ToyCopyWith<$Res>? get toy {
    if (_value.toy == null) {
      return null;
    }

    return $ToyCopyWith<$Res>(_value.toy!, (value) {
      return _then(_value.copyWith(toy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsumerCopyWith<$Res>? get ownerConsumer {
    if (_value.ownerConsumer == null) {
      return null;
    }

    return $ConsumerCopyWith<$Res>(_value.ownerConsumer!, (value) {
      return _then(_value.copyWith(ownerConsumer: value) as $Val);
    });
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
      {Consumer currentConsumer,
      Toy? toy,
      Consumer? ownerConsumer,
      bool isLoading,
      Failure? failure});

  @override
  $ConsumerCopyWith<$Res> get currentConsumer;
  @override
  $ToyCopyWith<$Res>? get toy;
  @override
  $ConsumerCopyWith<$Res>? get ownerConsumer;
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
    Object? currentConsumer = null,
    Object? toy = freezed,
    Object? ownerConsumer = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$ToyDetailStateImpl(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
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
      this.failure});

  @override
  final Consumer currentConsumer;
  @override
  final Toy? toy;
  @override
  final Consumer? ownerConsumer;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ToyDetailState(currentConsumer: $currentConsumer, toy: $toy, ownerConsumer: $ownerConsumer, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailStateImpl &&
            (identical(other.currentConsumer, currentConsumer) ||
                other.currentConsumer == currentConsumer) &&
            (identical(other.toy, toy) || other.toy == toy) &&
            (identical(other.ownerConsumer, ownerConsumer) ||
                other.ownerConsumer == ownerConsumer) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentConsumer, toy, ownerConsumer, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyDetailStateImplCopyWith<_$ToyDetailStateImpl> get copyWith =>
      __$$ToyDetailStateImplCopyWithImpl<_$ToyDetailStateImpl>(
          this, _$identity);
}

abstract class _ToyDetailState implements ToyDetailState {
  const factory _ToyDetailState(
      {required final Consumer currentConsumer,
      final Toy? toy,
      final Consumer? ownerConsumer,
      final bool isLoading,
      final Failure? failure}) = _$ToyDetailStateImpl;

  @override
  Consumer get currentConsumer;
  @override
  Toy? get toy;
  @override
  Consumer? get ownerConsumer;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ToyDetailStateImplCopyWith<_$ToyDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
