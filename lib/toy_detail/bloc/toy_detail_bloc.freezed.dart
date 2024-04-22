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
    required TResult Function(String toyOwnerAuthId) loadToyOwnerConsumerData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(String toyOwnerAuthId)? loadToyOwnerConsumerData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(String toyOwnerAuthId)? loadToyOwnerConsumerData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToyDetailCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(ToyDetailLoadToyOwnerConsumerData value)
        loadToyOwnerConsumerData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyOwnerConsumerData value)?
        loadToyOwnerConsumerData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyOwnerConsumerData value)?
        loadToyOwnerConsumerData,
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
    required TResult Function(String toyOwnerAuthId) loadToyOwnerConsumerData,
  }) {
    return currentConsumerUpdated(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(String toyOwnerAuthId)? loadToyOwnerConsumerData,
  }) {
    return currentConsumerUpdated?.call(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(String toyOwnerAuthId)? loadToyOwnerConsumerData,
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
    required TResult Function(ToyDetailLoadToyOwnerConsumerData value)
        loadToyOwnerConsumerData,
  }) {
    return currentConsumerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyOwnerConsumerData value)?
        loadToyOwnerConsumerData,
  }) {
    return currentConsumerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyOwnerConsumerData value)?
        loadToyOwnerConsumerData,
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
abstract class _$$ToyDetailLoadToyOwnerConsumerDataImplCopyWith<$Res> {
  factory _$$ToyDetailLoadToyOwnerConsumerDataImplCopyWith(
          _$ToyDetailLoadToyOwnerConsumerDataImpl value,
          $Res Function(_$ToyDetailLoadToyOwnerConsumerDataImpl) then) =
      __$$ToyDetailLoadToyOwnerConsumerDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String toyOwnerAuthId});
}

/// @nodoc
class __$$ToyDetailLoadToyOwnerConsumerDataImplCopyWithImpl<$Res>
    extends _$ToyDetailEventCopyWithImpl<$Res,
        _$ToyDetailLoadToyOwnerConsumerDataImpl>
    implements _$$ToyDetailLoadToyOwnerConsumerDataImplCopyWith<$Res> {
  __$$ToyDetailLoadToyOwnerConsumerDataImplCopyWithImpl(
      _$ToyDetailLoadToyOwnerConsumerDataImpl _value,
      $Res Function(_$ToyDetailLoadToyOwnerConsumerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toyOwnerAuthId = null,
  }) {
    return _then(_$ToyDetailLoadToyOwnerConsumerDataImpl(
      toyOwnerAuthId: null == toyOwnerAuthId
          ? _value.toyOwnerAuthId
          : toyOwnerAuthId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToyDetailLoadToyOwnerConsumerDataImpl
    implements ToyDetailLoadToyOwnerConsumerData {
  const _$ToyDetailLoadToyOwnerConsumerDataImpl({required this.toyOwnerAuthId});

  @override
  final String toyOwnerAuthId;

  @override
  String toString() {
    return 'ToyDetailEvent.loadToyOwnerConsumerData(toyOwnerAuthId: $toyOwnerAuthId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailLoadToyOwnerConsumerDataImpl &&
            (identical(other.toyOwnerAuthId, toyOwnerAuthId) ||
                other.toyOwnerAuthId == toyOwnerAuthId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toyOwnerAuthId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyDetailLoadToyOwnerConsumerDataImplCopyWith<
          _$ToyDetailLoadToyOwnerConsumerDataImpl>
      get copyWith => __$$ToyDetailLoadToyOwnerConsumerDataImplCopyWithImpl<
          _$ToyDetailLoadToyOwnerConsumerDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(String toyOwnerAuthId) loadToyOwnerConsumerData,
  }) {
    return loadToyOwnerConsumerData(toyOwnerAuthId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(String toyOwnerAuthId)? loadToyOwnerConsumerData,
  }) {
    return loadToyOwnerConsumerData?.call(toyOwnerAuthId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(String toyOwnerAuthId)? loadToyOwnerConsumerData,
    required TResult orElse(),
  }) {
    if (loadToyOwnerConsumerData != null) {
      return loadToyOwnerConsumerData(toyOwnerAuthId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToyDetailCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(ToyDetailLoadToyOwnerConsumerData value)
        loadToyOwnerConsumerData,
  }) {
    return loadToyOwnerConsumerData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(ToyDetailLoadToyOwnerConsumerData value)?
        loadToyOwnerConsumerData,
  }) {
    return loadToyOwnerConsumerData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToyDetailCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(ToyDetailLoadToyOwnerConsumerData value)?
        loadToyOwnerConsumerData,
    required TResult orElse(),
  }) {
    if (loadToyOwnerConsumerData != null) {
      return loadToyOwnerConsumerData(this);
    }
    return orElse();
  }
}

abstract class ToyDetailLoadToyOwnerConsumerData implements ToyDetailEvent {
  const factory ToyDetailLoadToyOwnerConsumerData(
          {required final String toyOwnerAuthId}) =
      _$ToyDetailLoadToyOwnerConsumerDataImpl;

  String get toyOwnerAuthId;
  @JsonKey(ignore: true)
  _$$ToyDetailLoadToyOwnerConsumerDataImplCopyWith<
          _$ToyDetailLoadToyOwnerConsumerDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToyDetailState {
  Consumer get currentConsumer => throw _privateConstructorUsedError;
  Consumer? get toyOwnerConsumer => throw _privateConstructorUsedError;
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
      Consumer? toyOwnerConsumer,
      bool isLoading,
      Failure? failure});

  $ConsumerCopyWith<$Res> get currentConsumer;
  $ConsumerCopyWith<$Res>? get toyOwnerConsumer;
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
    Object? toyOwnerConsumer = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
      toyOwnerConsumer: freezed == toyOwnerConsumer
          ? _value.toyOwnerConsumer
          : toyOwnerConsumer // ignore: cast_nullable_to_non_nullable
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
  $ConsumerCopyWith<$Res>? get toyOwnerConsumer {
    if (_value.toyOwnerConsumer == null) {
      return null;
    }

    return $ConsumerCopyWith<$Res>(_value.toyOwnerConsumer!, (value) {
      return _then(_value.copyWith(toyOwnerConsumer: value) as $Val);
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
      Consumer? toyOwnerConsumer,
      bool isLoading,
      Failure? failure});

  @override
  $ConsumerCopyWith<$Res> get currentConsumer;
  @override
  $ConsumerCopyWith<$Res>? get toyOwnerConsumer;
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
    Object? toyOwnerConsumer = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$ToyDetailStateImpl(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
      toyOwnerConsumer: freezed == toyOwnerConsumer
          ? _value.toyOwnerConsumer
          : toyOwnerConsumer // ignore: cast_nullable_to_non_nullable
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
      this.toyOwnerConsumer,
      this.isLoading = false,
      this.failure});

  @override
  final Consumer currentConsumer;
  @override
  final Consumer? toyOwnerConsumer;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ToyDetailState(currentConsumer: $currentConsumer, toyOwnerConsumer: $toyOwnerConsumer, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailStateImpl &&
            (identical(other.currentConsumer, currentConsumer) ||
                other.currentConsumer == currentConsumer) &&
            (identical(other.toyOwnerConsumer, toyOwnerConsumer) ||
                other.toyOwnerConsumer == toyOwnerConsumer) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentConsumer, toyOwnerConsumer, isLoading, failure);

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
      final Consumer? toyOwnerConsumer,
      final bool isLoading,
      final Failure? failure}) = _$ToyDetailStateImpl;

  @override
  Consumer get currentConsumer;
  @override
  Consumer? get toyOwnerConsumer;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ToyDetailStateImplCopyWith<_$ToyDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
