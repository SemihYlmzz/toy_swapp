// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demands_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DemandsEvent {
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
    required TResult Function(DemandsFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DemandsFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DemandsFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandsEventCopyWith<$Res> {
  factory $DemandsEventCopyWith(
          DemandsEvent value, $Res Function(DemandsEvent) then) =
      _$DemandsEventCopyWithImpl<$Res, DemandsEvent>;
}

/// @nodoc
class _$DemandsEventCopyWithImpl<$Res, $Val extends DemandsEvent>
    implements $DemandsEventCopyWith<$Res> {
  _$DemandsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DemandsFetchImplCopyWith<$Res> {
  factory _$$DemandsFetchImplCopyWith(
          _$DemandsFetchImpl value, $Res Function(_$DemandsFetchImpl) then) =
      __$$DemandsFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DemandsFetchImplCopyWithImpl<$Res>
    extends _$DemandsEventCopyWithImpl<$Res, _$DemandsFetchImpl>
    implements _$$DemandsFetchImplCopyWith<$Res> {
  __$$DemandsFetchImplCopyWithImpl(
      _$DemandsFetchImpl _value, $Res Function(_$DemandsFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DemandsFetchImpl implements DemandsFetch {
  const _$DemandsFetchImpl();

  @override
  String toString() {
    return 'DemandsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DemandsFetchImpl);
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
    required TResult Function(DemandsFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DemandsFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DemandsFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class DemandsFetch implements DemandsEvent {
  const factory DemandsFetch() = _$DemandsFetchImpl;
}

/// @nodoc
mixin _$DemandsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DemandsStateCopyWith<DemandsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandsStateCopyWith<$Res> {
  factory $DemandsStateCopyWith(
          DemandsState value, $Res Function(DemandsState) then) =
      _$DemandsStateCopyWithImpl<$Res, DemandsState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$DemandsStateCopyWithImpl<$Res, $Val extends DemandsState>
    implements $DemandsStateCopyWith<$Res> {
  _$DemandsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$DemandsStateImplCopyWith<$Res>
    implements $DemandsStateCopyWith<$Res> {
  factory _$$DemandsStateImplCopyWith(
          _$DemandsStateImpl value, $Res Function(_$DemandsStateImpl) then) =
      __$$DemandsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$DemandsStateImplCopyWithImpl<$Res>
    extends _$DemandsStateCopyWithImpl<$Res, _$DemandsStateImpl>
    implements _$$DemandsStateImplCopyWith<$Res> {
  __$$DemandsStateImplCopyWithImpl(
      _$DemandsStateImpl _value, $Res Function(_$DemandsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$DemandsStateImpl(
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

class _$DemandsStateImpl implements _DemandsState {
  const _$DemandsStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'DemandsState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandsStateImplCopyWith<_$DemandsStateImpl> get copyWith =>
      __$$DemandsStateImplCopyWithImpl<_$DemandsStateImpl>(this, _$identity);
}

abstract class _DemandsState implements DemandsState {
  const factory _DemandsState({final bool isLoading, final Failure? failure}) =
      _$DemandsStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$DemandsStateImplCopyWith<_$DemandsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
