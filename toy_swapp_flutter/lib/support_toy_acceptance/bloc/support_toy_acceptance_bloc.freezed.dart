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
    required TResult Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)
        updateAcceptableToys,
    required TResult Function() startWatchAcceptableToys,
    required TResult Function() stopWatchAcceptableToys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)?
        updateAcceptableToys,
    TResult? Function()? startWatchAcceptableToys,
    TResult? Function()? stopWatchAcceptableToys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)?
        updateAcceptableToys,
    TResult Function()? startWatchAcceptableToys,
    TResult Function()? stopWatchAcceptableToys,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SupportToyAcceptanceEventUpdateAcceptableToys value)
        updateAcceptableToys,
    required TResult Function(
            SupportToyAcceptanceEventStartWatchAcceptableToys value)
        startWatchAcceptableToys,
    required TResult Function(
            SupportToyAcceptanceEventStopWatchAcceptableToys value)
        stopWatchAcceptableToys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceEventUpdateAcceptableToys value)?
        updateAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventStartWatchAcceptableToys value)?
        startWatchAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventStopWatchAcceptableToys value)?
        stopWatchAcceptableToys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceEventUpdateAcceptableToys value)?
        updateAcceptableToys,
    TResult Function(SupportToyAcceptanceEventStartWatchAcceptableToys value)?
        startWatchAcceptableToys,
    TResult Function(SupportToyAcceptanceEventStopWatchAcceptableToys value)?
        stopWatchAcceptableToys,
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
abstract class _$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWith<
    $Res> {
  factory _$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWith(
          _$SupportToyAcceptanceEventUpdateAcceptableToysImpl value,
          $Res Function(_$SupportToyAcceptanceEventUpdateAcceptableToysImpl)
              then) =
      __$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ToyAndOwnerConsumer> updatedAcceptableToys});
}

/// @nodoc
class __$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWithImpl<$Res>
    extends _$SupportToyAcceptanceEventCopyWithImpl<$Res,
        _$SupportToyAcceptanceEventUpdateAcceptableToysImpl>
    implements
        _$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWith<$Res> {
  __$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWithImpl(
      _$SupportToyAcceptanceEventUpdateAcceptableToysImpl _value,
      $Res Function(_$SupportToyAcceptanceEventUpdateAcceptableToysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAcceptableToys = null,
  }) {
    return _then(_$SupportToyAcceptanceEventUpdateAcceptableToysImpl(
      null == updatedAcceptableToys
          ? _value._updatedAcceptableToys
          : updatedAcceptableToys // ignore: cast_nullable_to_non_nullable
              as List<ToyAndOwnerConsumer>,
    ));
  }
}

/// @nodoc

class _$SupportToyAcceptanceEventUpdateAcceptableToysImpl
    implements SupportToyAcceptanceEventUpdateAcceptableToys {
  const _$SupportToyAcceptanceEventUpdateAcceptableToysImpl(
      final List<ToyAndOwnerConsumer> updatedAcceptableToys)
      : _updatedAcceptableToys = updatedAcceptableToys;

  final List<ToyAndOwnerConsumer> _updatedAcceptableToys;
  @override
  List<ToyAndOwnerConsumer> get updatedAcceptableToys {
    if (_updatedAcceptableToys is EqualUnmodifiableListView)
      return _updatedAcceptableToys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updatedAcceptableToys);
  }

  @override
  String toString() {
    return 'SupportToyAcceptanceEvent.updateAcceptableToys(updatedAcceptableToys: $updatedAcceptableToys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceEventUpdateAcceptableToysImpl &&
            const DeepCollectionEquality()
                .equals(other._updatedAcceptableToys, _updatedAcceptableToys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_updatedAcceptableToys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWith<
          _$SupportToyAcceptanceEventUpdateAcceptableToysImpl>
      get copyWith =>
          __$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWithImpl<
                  _$SupportToyAcceptanceEventUpdateAcceptableToysImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)
        updateAcceptableToys,
    required TResult Function() startWatchAcceptableToys,
    required TResult Function() stopWatchAcceptableToys,
  }) {
    return updateAcceptableToys(updatedAcceptableToys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)?
        updateAcceptableToys,
    TResult? Function()? startWatchAcceptableToys,
    TResult? Function()? stopWatchAcceptableToys,
  }) {
    return updateAcceptableToys?.call(updatedAcceptableToys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)?
        updateAcceptableToys,
    TResult Function()? startWatchAcceptableToys,
    TResult Function()? stopWatchAcceptableToys,
    required TResult orElse(),
  }) {
    if (updateAcceptableToys != null) {
      return updateAcceptableToys(updatedAcceptableToys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SupportToyAcceptanceEventUpdateAcceptableToys value)
        updateAcceptableToys,
    required TResult Function(
            SupportToyAcceptanceEventStartWatchAcceptableToys value)
        startWatchAcceptableToys,
    required TResult Function(
            SupportToyAcceptanceEventStopWatchAcceptableToys value)
        stopWatchAcceptableToys,
  }) {
    return updateAcceptableToys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceEventUpdateAcceptableToys value)?
        updateAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventStartWatchAcceptableToys value)?
        startWatchAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventStopWatchAcceptableToys value)?
        stopWatchAcceptableToys,
  }) {
    return updateAcceptableToys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceEventUpdateAcceptableToys value)?
        updateAcceptableToys,
    TResult Function(SupportToyAcceptanceEventStartWatchAcceptableToys value)?
        startWatchAcceptableToys,
    TResult Function(SupportToyAcceptanceEventStopWatchAcceptableToys value)?
        stopWatchAcceptableToys,
    required TResult orElse(),
  }) {
    if (updateAcceptableToys != null) {
      return updateAcceptableToys(this);
    }
    return orElse();
  }
}

abstract class SupportToyAcceptanceEventUpdateAcceptableToys
    implements SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceEventUpdateAcceptableToys(
          final List<ToyAndOwnerConsumer> updatedAcceptableToys) =
      _$SupportToyAcceptanceEventUpdateAcceptableToysImpl;

  List<ToyAndOwnerConsumer> get updatedAcceptableToys;
  @JsonKey(ignore: true)
  _$$SupportToyAcceptanceEventUpdateAcceptableToysImplCopyWith<
          _$SupportToyAcceptanceEventUpdateAcceptableToysImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupportToyAcceptanceEventStartWatchAcceptableToysImplCopyWith<
    $Res> {
  factory _$$SupportToyAcceptanceEventStartWatchAcceptableToysImplCopyWith(
          _$SupportToyAcceptanceEventStartWatchAcceptableToysImpl value,
          $Res Function(_$SupportToyAcceptanceEventStartWatchAcceptableToysImpl)
              then) =
      __$$SupportToyAcceptanceEventStartWatchAcceptableToysImplCopyWithImpl<
          $Res>;
}

/// @nodoc
class __$$SupportToyAcceptanceEventStartWatchAcceptableToysImplCopyWithImpl<
        $Res>
    extends _$SupportToyAcceptanceEventCopyWithImpl<$Res,
        _$SupportToyAcceptanceEventStartWatchAcceptableToysImpl>
    implements
        _$$SupportToyAcceptanceEventStartWatchAcceptableToysImplCopyWith<$Res> {
  __$$SupportToyAcceptanceEventStartWatchAcceptableToysImplCopyWithImpl(
      _$SupportToyAcceptanceEventStartWatchAcceptableToysImpl _value,
      $Res Function(_$SupportToyAcceptanceEventStartWatchAcceptableToysImpl)
          _then)
      : super(_value, _then);
}

/// @nodoc

class _$SupportToyAcceptanceEventStartWatchAcceptableToysImpl
    implements SupportToyAcceptanceEventStartWatchAcceptableToys {
  const _$SupportToyAcceptanceEventStartWatchAcceptableToysImpl();

  @override
  String toString() {
    return 'SupportToyAcceptanceEvent.startWatchAcceptableToys()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceEventStartWatchAcceptableToysImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)
        updateAcceptableToys,
    required TResult Function() startWatchAcceptableToys,
    required TResult Function() stopWatchAcceptableToys,
  }) {
    return startWatchAcceptableToys();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)?
        updateAcceptableToys,
    TResult? Function()? startWatchAcceptableToys,
    TResult? Function()? stopWatchAcceptableToys,
  }) {
    return startWatchAcceptableToys?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)?
        updateAcceptableToys,
    TResult Function()? startWatchAcceptableToys,
    TResult Function()? stopWatchAcceptableToys,
    required TResult orElse(),
  }) {
    if (startWatchAcceptableToys != null) {
      return startWatchAcceptableToys();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SupportToyAcceptanceEventUpdateAcceptableToys value)
        updateAcceptableToys,
    required TResult Function(
            SupportToyAcceptanceEventStartWatchAcceptableToys value)
        startWatchAcceptableToys,
    required TResult Function(
            SupportToyAcceptanceEventStopWatchAcceptableToys value)
        stopWatchAcceptableToys,
  }) {
    return startWatchAcceptableToys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceEventUpdateAcceptableToys value)?
        updateAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventStartWatchAcceptableToys value)?
        startWatchAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventStopWatchAcceptableToys value)?
        stopWatchAcceptableToys,
  }) {
    return startWatchAcceptableToys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceEventUpdateAcceptableToys value)?
        updateAcceptableToys,
    TResult Function(SupportToyAcceptanceEventStartWatchAcceptableToys value)?
        startWatchAcceptableToys,
    TResult Function(SupportToyAcceptanceEventStopWatchAcceptableToys value)?
        stopWatchAcceptableToys,
    required TResult orElse(),
  }) {
    if (startWatchAcceptableToys != null) {
      return startWatchAcceptableToys(this);
    }
    return orElse();
  }
}

abstract class SupportToyAcceptanceEventStartWatchAcceptableToys
    implements SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceEventStartWatchAcceptableToys() =
      _$SupportToyAcceptanceEventStartWatchAcceptableToysImpl;
}

/// @nodoc
abstract class _$$SupportToyAcceptanceEventStopWatchAcceptableToysImplCopyWith<
    $Res> {
  factory _$$SupportToyAcceptanceEventStopWatchAcceptableToysImplCopyWith(
          _$SupportToyAcceptanceEventStopWatchAcceptableToysImpl value,
          $Res Function(_$SupportToyAcceptanceEventStopWatchAcceptableToysImpl)
              then) =
      __$$SupportToyAcceptanceEventStopWatchAcceptableToysImplCopyWithImpl<
          $Res>;
}

/// @nodoc
class __$$SupportToyAcceptanceEventStopWatchAcceptableToysImplCopyWithImpl<$Res>
    extends _$SupportToyAcceptanceEventCopyWithImpl<$Res,
        _$SupportToyAcceptanceEventStopWatchAcceptableToysImpl>
    implements
        _$$SupportToyAcceptanceEventStopWatchAcceptableToysImplCopyWith<$Res> {
  __$$SupportToyAcceptanceEventStopWatchAcceptableToysImplCopyWithImpl(
      _$SupportToyAcceptanceEventStopWatchAcceptableToysImpl _value,
      $Res Function(_$SupportToyAcceptanceEventStopWatchAcceptableToysImpl)
          _then)
      : super(_value, _then);
}

/// @nodoc

class _$SupportToyAcceptanceEventStopWatchAcceptableToysImpl
    implements SupportToyAcceptanceEventStopWatchAcceptableToys {
  const _$SupportToyAcceptanceEventStopWatchAcceptableToysImpl();

  @override
  String toString() {
    return 'SupportToyAcceptanceEvent.stopWatchAcceptableToys()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceEventStopWatchAcceptableToysImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)
        updateAcceptableToys,
    required TResult Function() startWatchAcceptableToys,
    required TResult Function() stopWatchAcceptableToys,
  }) {
    return stopWatchAcceptableToys();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)?
        updateAcceptableToys,
    TResult? Function()? startWatchAcceptableToys,
    TResult? Function()? stopWatchAcceptableToys,
  }) {
    return stopWatchAcceptableToys?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ToyAndOwnerConsumer> updatedAcceptableToys)?
        updateAcceptableToys,
    TResult Function()? startWatchAcceptableToys,
    TResult Function()? stopWatchAcceptableToys,
    required TResult orElse(),
  }) {
    if (stopWatchAcceptableToys != null) {
      return stopWatchAcceptableToys();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SupportToyAcceptanceEventUpdateAcceptableToys value)
        updateAcceptableToys,
    required TResult Function(
            SupportToyAcceptanceEventStartWatchAcceptableToys value)
        startWatchAcceptableToys,
    required TResult Function(
            SupportToyAcceptanceEventStopWatchAcceptableToys value)
        stopWatchAcceptableToys,
  }) {
    return stopWatchAcceptableToys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportToyAcceptanceEventUpdateAcceptableToys value)?
        updateAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventStartWatchAcceptableToys value)?
        startWatchAcceptableToys,
    TResult? Function(SupportToyAcceptanceEventStopWatchAcceptableToys value)?
        stopWatchAcceptableToys,
  }) {
    return stopWatchAcceptableToys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportToyAcceptanceEventUpdateAcceptableToys value)?
        updateAcceptableToys,
    TResult Function(SupportToyAcceptanceEventStartWatchAcceptableToys value)?
        startWatchAcceptableToys,
    TResult Function(SupportToyAcceptanceEventStopWatchAcceptableToys value)?
        stopWatchAcceptableToys,
    required TResult orElse(),
  }) {
    if (stopWatchAcceptableToys != null) {
      return stopWatchAcceptableToys(this);
    }
    return orElse();
  }
}

abstract class SupportToyAcceptanceEventStopWatchAcceptableToys
    implements SupportToyAcceptanceEvent {
  const factory SupportToyAcceptanceEventStopWatchAcceptableToys() =
      _$SupportToyAcceptanceEventStopWatchAcceptableToysImpl;
}

/// @nodoc
mixin _$SupportToyAcceptanceState {
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
      {List<ToyAndOwnerConsumer> acceptableToys,
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
    Object? acceptableToys = null,
    Object? isFetching = null,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? fetchFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
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
      {List<ToyAndOwnerConsumer> acceptableToys,
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
    Object? acceptableToys = null,
    Object? isFetching = null,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? fetchFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$SupportToyAcceptanceStateImpl(
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
      {final List<ToyAndOwnerConsumer> acceptableToys = const [],
      this.isFetching = false,
      this.hasReachedMax = false,
      this.isLoading = false,
      this.fetchFailure,
      this.failure})
      : _acceptableToys = acceptableToys;

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
    return 'SupportToyAcceptanceState(acceptableToys: $acceptableToys, isFetching: $isFetching, hasReachedMax: $hasReachedMax, isLoading: $isLoading, fetchFailure: $fetchFailure, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportToyAcceptanceStateImpl &&
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
      {final List<ToyAndOwnerConsumer> acceptableToys,
      final bool isFetching,
      final bool hasReachedMax,
      final bool isLoading,
      final Failure? fetchFailure,
      final Failure? failure}) = _$SupportToyAcceptanceStateImpl;

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
