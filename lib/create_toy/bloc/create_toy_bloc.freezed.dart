// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_toy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateToyEvent {
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
    required TResult Function(CreateToyFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateToyFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateToyFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateToyEventCopyWith<$Res> {
  factory $CreateToyEventCopyWith(
          CreateToyEvent value, $Res Function(CreateToyEvent) then) =
      _$CreateToyEventCopyWithImpl<$Res, CreateToyEvent>;
}

/// @nodoc
class _$CreateToyEventCopyWithImpl<$Res, $Val extends CreateToyEvent>
    implements $CreateToyEventCopyWith<$Res> {
  _$CreateToyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateToyFetchImplCopyWith<$Res> {
  factory _$$CreateToyFetchImplCopyWith(_$CreateToyFetchImpl value,
          $Res Function(_$CreateToyFetchImpl) then) =
      __$$CreateToyFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateToyFetchImplCopyWithImpl<$Res>
    extends _$CreateToyEventCopyWithImpl<$Res, _$CreateToyFetchImpl>
    implements _$$CreateToyFetchImplCopyWith<$Res> {
  __$$CreateToyFetchImplCopyWithImpl(
      _$CreateToyFetchImpl _value, $Res Function(_$CreateToyFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateToyFetchImpl implements CreateToyFetch {
  const _$CreateToyFetchImpl();

  @override
  String toString() {
    return 'CreateToyEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateToyFetchImpl);
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
    required TResult Function(CreateToyFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateToyFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateToyFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CreateToyFetch implements CreateToyEvent {
  const factory CreateToyFetch() = _$CreateToyFetchImpl;
}

/// @nodoc
mixin _$CreateToyState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateToyStateCopyWith<CreateToyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateToyStateCopyWith<$Res> {
  factory $CreateToyStateCopyWith(
          CreateToyState value, $Res Function(CreateToyState) then) =
      _$CreateToyStateCopyWithImpl<$Res, CreateToyState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$CreateToyStateCopyWithImpl<$Res, $Val extends CreateToyState>
    implements $CreateToyStateCopyWith<$Res> {
  _$CreateToyStateCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateToyStateImplCopyWith<$Res>
    implements $CreateToyStateCopyWith<$Res> {
  factory _$$CreateToyStateImplCopyWith(_$CreateToyStateImpl value,
          $Res Function(_$CreateToyStateImpl) then) =
      __$$CreateToyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$CreateToyStateImplCopyWithImpl<$Res>
    extends _$CreateToyStateCopyWithImpl<$Res, _$CreateToyStateImpl>
    implements _$$CreateToyStateImplCopyWith<$Res> {
  __$$CreateToyStateImplCopyWithImpl(
      _$CreateToyStateImpl _value, $Res Function(_$CreateToyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$CreateToyStateImpl(
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

class _$CreateToyStateImpl implements _CreateToyState {
  const _$CreateToyStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'CreateToyState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateToyStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateToyStateImplCopyWith<_$CreateToyStateImpl> get copyWith =>
      __$$CreateToyStateImplCopyWithImpl<_$CreateToyStateImpl>(
          this, _$identity);
}

abstract class _CreateToyState implements CreateToyState {
  const factory _CreateToyState(
      {final bool isLoading, final Failure? failure}) = _$CreateToyStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$CreateToyStateImplCopyWith<_$CreateToyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
