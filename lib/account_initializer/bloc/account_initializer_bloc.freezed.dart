// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_initializer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountInitializerEvent {
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
    required TResult Function(AccountInitializerFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitializerFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitializerFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInitializerEventCopyWith<$Res> {
  factory $AccountInitializerEventCopyWith(AccountInitializerEvent value,
          $Res Function(AccountInitializerEvent) then) =
      _$AccountInitializerEventCopyWithImpl<$Res, AccountInitializerEvent>;
}

/// @nodoc
class _$AccountInitializerEventCopyWithImpl<$Res,
        $Val extends AccountInitializerEvent>
    implements $AccountInitializerEventCopyWith<$Res> {
  _$AccountInitializerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountInitializerFetchImplCopyWith<$Res> {
  factory _$$AccountInitializerFetchImplCopyWith(
          _$AccountInitializerFetchImpl value,
          $Res Function(_$AccountInitializerFetchImpl) then) =
      __$$AccountInitializerFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountInitializerFetchImplCopyWithImpl<$Res>
    extends _$AccountInitializerEventCopyWithImpl<$Res,
        _$AccountInitializerFetchImpl>
    implements _$$AccountInitializerFetchImplCopyWith<$Res> {
  __$$AccountInitializerFetchImplCopyWithImpl(
      _$AccountInitializerFetchImpl _value,
      $Res Function(_$AccountInitializerFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountInitializerFetchImpl implements AccountInitializerFetch {
  const _$AccountInitializerFetchImpl();

  @override
  String toString() {
    return 'AccountInitializerEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountInitializerFetchImpl);
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
    required TResult Function(AccountInitializerFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitializerFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitializerFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AccountInitializerFetch implements AccountInitializerEvent {
  const factory AccountInitializerFetch() = _$AccountInitializerFetchImpl;
}

/// @nodoc
mixin _$AccountInitializerState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountInitializerStateCopyWith<AccountInitializerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInitializerStateCopyWith<$Res> {
  factory $AccountInitializerStateCopyWith(AccountInitializerState value,
          $Res Function(AccountInitializerState) then) =
      _$AccountInitializerStateCopyWithImpl<$Res, AccountInitializerState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$AccountInitializerStateCopyWithImpl<$Res,
        $Val extends AccountInitializerState>
    implements $AccountInitializerStateCopyWith<$Res> {
  _$AccountInitializerStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AccountInitializerStateImplCopyWith<$Res>
    implements $AccountInitializerStateCopyWith<$Res> {
  factory _$$AccountInitializerStateImplCopyWith(
          _$AccountInitializerStateImpl value,
          $Res Function(_$AccountInitializerStateImpl) then) =
      __$$AccountInitializerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$AccountInitializerStateImplCopyWithImpl<$Res>
    extends _$AccountInitializerStateCopyWithImpl<$Res,
        _$AccountInitializerStateImpl>
    implements _$$AccountInitializerStateImplCopyWith<$Res> {
  __$$AccountInitializerStateImplCopyWithImpl(
      _$AccountInitializerStateImpl _value,
      $Res Function(_$AccountInitializerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$AccountInitializerStateImpl(
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

class _$AccountInitializerStateImpl implements _AccountInitializerState {
  const _$AccountInitializerStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AccountInitializerState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountInitializerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountInitializerStateImplCopyWith<_$AccountInitializerStateImpl>
      get copyWith => __$$AccountInitializerStateImplCopyWithImpl<
          _$AccountInitializerStateImpl>(this, _$identity);
}

abstract class _AccountInitializerState implements AccountInitializerState {
  const factory _AccountInitializerState(
      {final bool isLoading,
      final Failure? failure}) = _$AccountInitializerStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AccountInitializerStateImplCopyWith<_$AccountInitializerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
