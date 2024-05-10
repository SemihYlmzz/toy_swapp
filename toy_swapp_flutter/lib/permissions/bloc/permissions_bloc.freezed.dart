// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permissions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PermissionsEvent {
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
    required TResult Function(PermissionsFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsEventCopyWith<$Res> {
  factory $PermissionsEventCopyWith(
          PermissionsEvent value, $Res Function(PermissionsEvent) then) =
      _$PermissionsEventCopyWithImpl<$Res, PermissionsEvent>;
}

/// @nodoc
class _$PermissionsEventCopyWithImpl<$Res, $Val extends PermissionsEvent>
    implements $PermissionsEventCopyWith<$Res> {
  _$PermissionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PermissionsFetchImplCopyWith<$Res> {
  factory _$$PermissionsFetchImplCopyWith(_$PermissionsFetchImpl value,
          $Res Function(_$PermissionsFetchImpl) then) =
      __$$PermissionsFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionsFetchImplCopyWithImpl<$Res>
    extends _$PermissionsEventCopyWithImpl<$Res, _$PermissionsFetchImpl>
    implements _$$PermissionsFetchImplCopyWith<$Res> {
  __$$PermissionsFetchImplCopyWithImpl(_$PermissionsFetchImpl _value,
      $Res Function(_$PermissionsFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionsFetchImpl implements PermissionsFetch {
  const _$PermissionsFetchImpl();

  @override
  String toString() {
    return 'PermissionsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionsFetchImpl);
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
    required TResult Function(PermissionsFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class PermissionsFetch implements PermissionsEvent {
  const factory PermissionsFetch() = _$PermissionsFetchImpl;
}

/// @nodoc
mixin _$PermissionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermissionsStateCopyWith<PermissionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsStateCopyWith<$Res> {
  factory $PermissionsStateCopyWith(
          PermissionsState value, $Res Function(PermissionsState) then) =
      _$PermissionsStateCopyWithImpl<$Res, PermissionsState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$PermissionsStateCopyWithImpl<$Res, $Val extends PermissionsState>
    implements $PermissionsStateCopyWith<$Res> {
  _$PermissionsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PermissionsStateImplCopyWith<$Res>
    implements $PermissionsStateCopyWith<$Res> {
  factory _$$PermissionsStateImplCopyWith(_$PermissionsStateImpl value,
          $Res Function(_$PermissionsStateImpl) then) =
      __$$PermissionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$PermissionsStateImplCopyWithImpl<$Res>
    extends _$PermissionsStateCopyWithImpl<$Res, _$PermissionsStateImpl>
    implements _$$PermissionsStateImplCopyWith<$Res> {
  __$$PermissionsStateImplCopyWithImpl(_$PermissionsStateImpl _value,
      $Res Function(_$PermissionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$PermissionsStateImpl(
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

class _$PermissionsStateImpl implements _PermissionsState {
  const _$PermissionsStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'PermissionsState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionsStateImplCopyWith<_$PermissionsStateImpl> get copyWith =>
      __$$PermissionsStateImplCopyWithImpl<_$PermissionsStateImpl>(
          this, _$identity);
}

abstract class _PermissionsState implements PermissionsState {
  const factory _PermissionsState(
      {final bool isLoading, final Failure? failure}) = _$PermissionsStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$PermissionsStateImplCopyWith<_$PermissionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
