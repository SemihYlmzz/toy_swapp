// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupportProfileEvent {
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
    required TResult Function(SupportProfileFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportProfileFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportProfileFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportProfileEventCopyWith<$Res> {
  factory $SupportProfileEventCopyWith(
          SupportProfileEvent value, $Res Function(SupportProfileEvent) then) =
      _$SupportProfileEventCopyWithImpl<$Res, SupportProfileEvent>;
}

/// @nodoc
class _$SupportProfileEventCopyWithImpl<$Res, $Val extends SupportProfileEvent>
    implements $SupportProfileEventCopyWith<$Res> {
  _$SupportProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SupportProfileFetchImplCopyWith<$Res> {
  factory _$$SupportProfileFetchImplCopyWith(_$SupportProfileFetchImpl value,
          $Res Function(_$SupportProfileFetchImpl) then) =
      __$$SupportProfileFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SupportProfileFetchImplCopyWithImpl<$Res>
    extends _$SupportProfileEventCopyWithImpl<$Res, _$SupportProfileFetchImpl>
    implements _$$SupportProfileFetchImplCopyWith<$Res> {
  __$$SupportProfileFetchImplCopyWithImpl(_$SupportProfileFetchImpl _value,
      $Res Function(_$SupportProfileFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SupportProfileFetchImpl implements SupportProfileFetch {
  const _$SupportProfileFetchImpl();

  @override
  String toString() {
    return 'SupportProfileEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportProfileFetchImpl);
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
    required TResult Function(SupportProfileFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportProfileFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportProfileFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class SupportProfileFetch implements SupportProfileEvent {
  const factory SupportProfileFetch() = _$SupportProfileFetchImpl;
}

/// @nodoc
mixin _$SupportProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportProfileStateCopyWith<SupportProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportProfileStateCopyWith<$Res> {
  factory $SupportProfileStateCopyWith(
          SupportProfileState value, $Res Function(SupportProfileState) then) =
      _$SupportProfileStateCopyWithImpl<$Res, SupportProfileState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$SupportProfileStateCopyWithImpl<$Res, $Val extends SupportProfileState>
    implements $SupportProfileStateCopyWith<$Res> {
  _$SupportProfileStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SupportProfileStateImplCopyWith<$Res>
    implements $SupportProfileStateCopyWith<$Res> {
  factory _$$SupportProfileStateImplCopyWith(_$SupportProfileStateImpl value,
          $Res Function(_$SupportProfileStateImpl) then) =
      __$$SupportProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$SupportProfileStateImplCopyWithImpl<$Res>
    extends _$SupportProfileStateCopyWithImpl<$Res, _$SupportProfileStateImpl>
    implements _$$SupportProfileStateImplCopyWith<$Res> {
  __$$SupportProfileStateImplCopyWithImpl(_$SupportProfileStateImpl _value,
      $Res Function(_$SupportProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SupportProfileStateImpl(
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

class _$SupportProfileStateImpl implements _SupportProfileState {
  const _$SupportProfileStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SupportProfileState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportProfileStateImplCopyWith<_$SupportProfileStateImpl> get copyWith =>
      __$$SupportProfileStateImplCopyWithImpl<_$SupportProfileStateImpl>(
          this, _$identity);
}

abstract class _SupportProfileState implements SupportProfileState {
  const factory _SupportProfileState(
      {final bool isLoading,
      final Failure? failure}) = _$SupportProfileStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SupportProfileStateImplCopyWith<_$SupportProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
