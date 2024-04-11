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
    required TResult Function(NavigatorBarFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigatorBarFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigatorBarFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorBarEventCopyWith<$Res> {
  factory $NavigatorBarEventCopyWith(
          NavigatorBarEvent value, $Res Function(NavigatorBarEvent) then) =
      _$NavigatorBarEventCopyWithImpl<$Res, NavigatorBarEvent>;
}

/// @nodoc
class _$NavigatorBarEventCopyWithImpl<$Res, $Val extends NavigatorBarEvent>
    implements $NavigatorBarEventCopyWith<$Res> {
  _$NavigatorBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavigatorBarFetchImplCopyWith<$Res> {
  factory _$$NavigatorBarFetchImplCopyWith(_$NavigatorBarFetchImpl value,
          $Res Function(_$NavigatorBarFetchImpl) then) =
      __$$NavigatorBarFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigatorBarFetchImplCopyWithImpl<$Res>
    extends _$NavigatorBarEventCopyWithImpl<$Res, _$NavigatorBarFetchImpl>
    implements _$$NavigatorBarFetchImplCopyWith<$Res> {
  __$$NavigatorBarFetchImplCopyWithImpl(_$NavigatorBarFetchImpl _value,
      $Res Function(_$NavigatorBarFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigatorBarFetchImpl implements NavigatorBarFetch {
  const _$NavigatorBarFetchImpl();

  @override
  String toString() {
    return 'NavigatorBarEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigatorBarFetchImpl);
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
    required TResult Function(NavigatorBarFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigatorBarFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigatorBarFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class NavigatorBarFetch implements NavigatorBarEvent {
  const factory NavigatorBarFetch() = _$NavigatorBarFetchImpl;
}

/// @nodoc
mixin _$NavigatorBarState {
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
  $Res call({bool isLoading, Failure? failure});
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
abstract class _$$NavigatorBarStateImplCopyWith<$Res>
    implements $NavigatorBarStateCopyWith<$Res> {
  factory _$$NavigatorBarStateImplCopyWith(_$NavigatorBarStateImpl value,
          $Res Function(_$NavigatorBarStateImpl) then) =
      __$$NavigatorBarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
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
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$NavigatorBarStateImpl(
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
  const _$NavigatorBarStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'NavigatorBarState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigatorBarStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigatorBarStateImplCopyWith<_$NavigatorBarStateImpl> get copyWith =>
      __$$NavigatorBarStateImplCopyWithImpl<_$NavigatorBarStateImpl>(
          this, _$identity);
}

abstract class _NavigatorBarState implements NavigatorBarState {
  const factory _NavigatorBarState(
      {final bool isLoading, final Failure? failure}) = _$NavigatorBarStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$NavigatorBarStateImplCopyWith<_$NavigatorBarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
