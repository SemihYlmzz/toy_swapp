// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountRegistrationEvent {
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
    required TResult Function(AccountRegistrationFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegistrationFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegistrationFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegistrationEventCopyWith<$Res> {
  factory $AccountRegistrationEventCopyWith(AccountRegistrationEvent value,
          $Res Function(AccountRegistrationEvent) then) =
      _$AccountRegistrationEventCopyWithImpl<$Res, AccountRegistrationEvent>;
}

/// @nodoc
class _$AccountRegistrationEventCopyWithImpl<$Res,
        $Val extends AccountRegistrationEvent>
    implements $AccountRegistrationEventCopyWith<$Res> {
  _$AccountRegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountRegistrationFetchImplCopyWith<$Res> {
  factory _$$AccountRegistrationFetchImplCopyWith(
          _$AccountRegistrationFetchImpl value,
          $Res Function(_$AccountRegistrationFetchImpl) then) =
      __$$AccountRegistrationFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountRegistrationFetchImplCopyWithImpl<$Res>
    extends _$AccountRegistrationEventCopyWithImpl<$Res,
        _$AccountRegistrationFetchImpl>
    implements _$$AccountRegistrationFetchImplCopyWith<$Res> {
  __$$AccountRegistrationFetchImplCopyWithImpl(
      _$AccountRegistrationFetchImpl _value,
      $Res Function(_$AccountRegistrationFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountRegistrationFetchImpl implements AccountRegistrationFetch {
  const _$AccountRegistrationFetchImpl();

  @override
  String toString() {
    return 'AccountRegistrationEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegistrationFetchImpl);
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
    required TResult Function(AccountRegistrationFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountRegistrationFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountRegistrationFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AccountRegistrationFetch implements AccountRegistrationEvent {
  const factory AccountRegistrationFetch() = _$AccountRegistrationFetchImpl;
}

/// @nodoc
mixin _$AccountRegistrationState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountRegistrationStateCopyWith<AccountRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRegistrationStateCopyWith<$Res> {
  factory $AccountRegistrationStateCopyWith(AccountRegistrationState value,
          $Res Function(AccountRegistrationState) then) =
      _$AccountRegistrationStateCopyWithImpl<$Res, AccountRegistrationState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$AccountRegistrationStateCopyWithImpl<$Res,
        $Val extends AccountRegistrationState>
    implements $AccountRegistrationStateCopyWith<$Res> {
  _$AccountRegistrationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AccountRegistrationStateImplCopyWith<$Res>
    implements $AccountRegistrationStateCopyWith<$Res> {
  factory _$$AccountRegistrationStateImplCopyWith(
          _$AccountRegistrationStateImpl value,
          $Res Function(_$AccountRegistrationStateImpl) then) =
      __$$AccountRegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$AccountRegistrationStateImplCopyWithImpl<$Res>
    extends _$AccountRegistrationStateCopyWithImpl<$Res,
        _$AccountRegistrationStateImpl>
    implements _$$AccountRegistrationStateImplCopyWith<$Res> {
  __$$AccountRegistrationStateImplCopyWithImpl(
      _$AccountRegistrationStateImpl _value,
      $Res Function(_$AccountRegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$AccountRegistrationStateImpl(
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

class _$AccountRegistrationStateImpl implements _AccountRegistrationState {
  const _$AccountRegistrationStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AccountRegistrationState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRegistrationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRegistrationStateImplCopyWith<_$AccountRegistrationStateImpl>
      get copyWith => __$$AccountRegistrationStateImplCopyWithImpl<
          _$AccountRegistrationStateImpl>(this, _$identity);
}

abstract class _AccountRegistrationState implements AccountRegistrationState {
  const factory _AccountRegistrationState(
      {final bool isLoading,
      final Failure? failure}) = _$AccountRegistrationStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AccountRegistrationStateImplCopyWith<_$AccountRegistrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
