// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigator_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigatorBarEvent {
  Consumer get updatedConsumer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigatorBarCurrentConsumerUpdated value)
        currentConsumerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigatorBarCurrentConsumerUpdated value)?
        currentConsumerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigatorBarCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigatorBarEventCopyWith<NavigatorBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorBarEventCopyWith<$Res> {
  factory $NavigatorBarEventCopyWith(
          NavigatorBarEvent value, $Res Function(NavigatorBarEvent) then) =
      _$NavigatorBarEventCopyWithImpl<$Res, NavigatorBarEvent>;
  @useResult
  $Res call({Consumer updatedConsumer});

  $ConsumerCopyWith<$Res> get updatedConsumer;
}

/// @nodoc
class _$NavigatorBarEventCopyWithImpl<$Res, $Val extends NavigatorBarEvent>
    implements $NavigatorBarEventCopyWith<$Res> {
  _$NavigatorBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedConsumer = null,
  }) {
    return _then(_value.copyWith(
      updatedConsumer: null == updatedConsumer
          ? _value.updatedConsumer
          : updatedConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsumerCopyWith<$Res> get updatedConsumer {
    return $ConsumerCopyWith<$Res>(_value.updatedConsumer, (value) {
      return _then(_value.copyWith(updatedConsumer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NavigatorBarCurrentConsumerUpdatedImplCopyWith<$Res>
    implements $NavigatorBarEventCopyWith<$Res> {
  factory _$$NavigatorBarCurrentConsumerUpdatedImplCopyWith(
          _$NavigatorBarCurrentConsumerUpdatedImpl value,
          $Res Function(_$NavigatorBarCurrentConsumerUpdatedImpl) then) =
      __$$NavigatorBarCurrentConsumerUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Consumer updatedConsumer});

  @override
  $ConsumerCopyWith<$Res> get updatedConsumer;
}

/// @nodoc
class __$$NavigatorBarCurrentConsumerUpdatedImplCopyWithImpl<$Res>
    extends _$NavigatorBarEventCopyWithImpl<$Res,
        _$NavigatorBarCurrentConsumerUpdatedImpl>
    implements _$$NavigatorBarCurrentConsumerUpdatedImplCopyWith<$Res> {
  __$$NavigatorBarCurrentConsumerUpdatedImplCopyWithImpl(
      _$NavigatorBarCurrentConsumerUpdatedImpl _value,
      $Res Function(_$NavigatorBarCurrentConsumerUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedConsumer = null,
  }) {
    return _then(_$NavigatorBarCurrentConsumerUpdatedImpl(
      null == updatedConsumer
          ? _value.updatedConsumer
          : updatedConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
    ));
  }
}

/// @nodoc

class _$NavigatorBarCurrentConsumerUpdatedImpl
    implements NavigatorBarCurrentConsumerUpdated {
  const _$NavigatorBarCurrentConsumerUpdatedImpl(this.updatedConsumer);

  @override
  final Consumer updatedConsumer;

  @override
  String toString() {
    return 'NavigatorBarEvent.currentConsumerUpdated(updatedConsumer: $updatedConsumer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigatorBarCurrentConsumerUpdatedImpl &&
            (identical(other.updatedConsumer, updatedConsumer) ||
                other.updatedConsumer == updatedConsumer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedConsumer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigatorBarCurrentConsumerUpdatedImplCopyWith<
          _$NavigatorBarCurrentConsumerUpdatedImpl>
      get copyWith => __$$NavigatorBarCurrentConsumerUpdatedImplCopyWithImpl<
          _$NavigatorBarCurrentConsumerUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
  }) {
    return currentConsumerUpdated(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
  }) {
    return currentConsumerUpdated?.call(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
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
    required TResult Function(NavigatorBarCurrentConsumerUpdated value)
        currentConsumerUpdated,
  }) {
    return currentConsumerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigatorBarCurrentConsumerUpdated value)?
        currentConsumerUpdated,
  }) {
    return currentConsumerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigatorBarCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    required TResult orElse(),
  }) {
    if (currentConsumerUpdated != null) {
      return currentConsumerUpdated(this);
    }
    return orElse();
  }
}

abstract class NavigatorBarCurrentConsumerUpdated implements NavigatorBarEvent {
  const factory NavigatorBarCurrentConsumerUpdated(
          final Consumer updatedConsumer) =
      _$NavigatorBarCurrentConsumerUpdatedImpl;

  @override
  Consumer get updatedConsumer;
  @override
  @JsonKey(ignore: true)
  _$$NavigatorBarCurrentConsumerUpdatedImplCopyWith<
          _$NavigatorBarCurrentConsumerUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigatorBarState {
  Consumer get currentConsumer => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigatorBarStateCopyWith<NavigatorBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorBarStateCopyWith<$Res> {
  factory $NavigatorBarStateCopyWith(
          NavigatorBarState value, $Res Function(NavigatorBarState) then) =
      _$NavigatorBarStateCopyWithImpl<$Res, NavigatorBarState>;
  @useResult
  $Res call({Consumer currentConsumer, bool isLoading, Failure? failure});

  $ConsumerCopyWith<$Res> get currentConsumer;
}

/// @nodoc
class _$NavigatorBarStateCopyWithImpl<$Res, $Val extends NavigatorBarState>
    implements $NavigatorBarStateCopyWith<$Res> {
  _$NavigatorBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConsumer = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
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
}

/// @nodoc
abstract class _$$NavigatorBarStateImplCopyWith<$Res>
    implements $NavigatorBarStateCopyWith<$Res> {
  factory _$$NavigatorBarStateImplCopyWith(_$NavigatorBarStateImpl value,
          $Res Function(_$NavigatorBarStateImpl) then) =
      __$$NavigatorBarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Consumer currentConsumer, bool isLoading, Failure? failure});

  @override
  $ConsumerCopyWith<$Res> get currentConsumer;
}

/// @nodoc
class __$$NavigatorBarStateImplCopyWithImpl<$Res>
    extends _$NavigatorBarStateCopyWithImpl<$Res, _$NavigatorBarStateImpl>
    implements _$$NavigatorBarStateImplCopyWith<$Res> {
  __$$NavigatorBarStateImplCopyWithImpl(_$NavigatorBarStateImpl _value,
      $Res Function(_$NavigatorBarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConsumer = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$NavigatorBarStateImpl(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
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

class _$NavigatorBarStateImpl implements _NavigatorBarState {
  const _$NavigatorBarStateImpl(
      {required this.currentConsumer, this.isLoading = false, this.failure});

  @override
  final Consumer currentConsumer;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'NavigatorBarState(currentConsumer: $currentConsumer, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigatorBarStateImpl &&
            (identical(other.currentConsumer, currentConsumer) ||
                other.currentConsumer == currentConsumer) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentConsumer, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigatorBarStateImplCopyWith<_$NavigatorBarStateImpl> get copyWith =>
      __$$NavigatorBarStateImplCopyWithImpl<_$NavigatorBarStateImpl>(
          this, _$identity);
}

abstract class _NavigatorBarState implements NavigatorBarState {
  const factory _NavigatorBarState(
      {required final Consumer currentConsumer,
      final bool isLoading,
      final Failure? failure}) = _$NavigatorBarStateImpl;

  @override
  Consumer get currentConsumer;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$NavigatorBarStateImplCopyWith<_$NavigatorBarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
