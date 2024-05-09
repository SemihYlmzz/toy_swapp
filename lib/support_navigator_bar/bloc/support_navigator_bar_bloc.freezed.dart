// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_navigator_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupportNavigatorBarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authSignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupportNavigatorBarAuthSignOut value) authSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportNavigatorBarAuthSignOut value)? authSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportNavigatorBarAuthSignOut value)? authSignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportNavigatorBarEventCopyWith<$Res> {
  factory $SupportNavigatorBarEventCopyWith(SupportNavigatorBarEvent value,
          $Res Function(SupportNavigatorBarEvent) then) =
      _$SupportNavigatorBarEventCopyWithImpl<$Res, SupportNavigatorBarEvent>;
}

/// @nodoc
class _$SupportNavigatorBarEventCopyWithImpl<$Res,
        $Val extends SupportNavigatorBarEvent>
    implements $SupportNavigatorBarEventCopyWith<$Res> {
  _$SupportNavigatorBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SupportNavigatorBarAuthSignOutImplCopyWith<$Res> {
  factory _$$SupportNavigatorBarAuthSignOutImplCopyWith(
          _$SupportNavigatorBarAuthSignOutImpl value,
          $Res Function(_$SupportNavigatorBarAuthSignOutImpl) then) =
      __$$SupportNavigatorBarAuthSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SupportNavigatorBarAuthSignOutImplCopyWithImpl<$Res>
    extends _$SupportNavigatorBarEventCopyWithImpl<$Res,
        _$SupportNavigatorBarAuthSignOutImpl>
    implements _$$SupportNavigatorBarAuthSignOutImplCopyWith<$Res> {
  __$$SupportNavigatorBarAuthSignOutImplCopyWithImpl(
      _$SupportNavigatorBarAuthSignOutImpl _value,
      $Res Function(_$SupportNavigatorBarAuthSignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SupportNavigatorBarAuthSignOutImpl
    implements SupportNavigatorBarAuthSignOut {
  const _$SupportNavigatorBarAuthSignOutImpl();

  @override
  String toString() {
    return 'SupportNavigatorBarEvent.authSignOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportNavigatorBarAuthSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authSignOut,
  }) {
    return authSignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authSignOut,
  }) {
    return authSignOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authSignOut,
    required TResult orElse(),
  }) {
    if (authSignOut != null) {
      return authSignOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SupportNavigatorBarAuthSignOut value) authSignOut,
  }) {
    return authSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportNavigatorBarAuthSignOut value)? authSignOut,
  }) {
    return authSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportNavigatorBarAuthSignOut value)? authSignOut,
    required TResult orElse(),
  }) {
    if (authSignOut != null) {
      return authSignOut(this);
    }
    return orElse();
  }
}

abstract class SupportNavigatorBarAuthSignOut
    implements SupportNavigatorBarEvent {
  const factory SupportNavigatorBarAuthSignOut() =
      _$SupportNavigatorBarAuthSignOutImpl;
}

/// @nodoc
mixin _$SupportNavigatorBarState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportNavigatorBarStateCopyWith<SupportNavigatorBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportNavigatorBarStateCopyWith<$Res> {
  factory $SupportNavigatorBarStateCopyWith(SupportNavigatorBarState value,
          $Res Function(SupportNavigatorBarState) then) =
      _$SupportNavigatorBarStateCopyWithImpl<$Res, SupportNavigatorBarState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$SupportNavigatorBarStateCopyWithImpl<$Res,
        $Val extends SupportNavigatorBarState>
    implements $SupportNavigatorBarStateCopyWith<$Res> {
  _$SupportNavigatorBarStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SupportNavigatorBarStateImplCopyWith<$Res>
    implements $SupportNavigatorBarStateCopyWith<$Res> {
  factory _$$SupportNavigatorBarStateImplCopyWith(
          _$SupportNavigatorBarStateImpl value,
          $Res Function(_$SupportNavigatorBarStateImpl) then) =
      __$$SupportNavigatorBarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$SupportNavigatorBarStateImplCopyWithImpl<$Res>
    extends _$SupportNavigatorBarStateCopyWithImpl<$Res,
        _$SupportNavigatorBarStateImpl>
    implements _$$SupportNavigatorBarStateImplCopyWith<$Res> {
  __$$SupportNavigatorBarStateImplCopyWithImpl(
      _$SupportNavigatorBarStateImpl _value,
      $Res Function(_$SupportNavigatorBarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SupportNavigatorBarStateImpl(
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

class _$SupportNavigatorBarStateImpl implements _SupportNavigatorBarState {
  const _$SupportNavigatorBarStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SupportNavigatorBarState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportNavigatorBarStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportNavigatorBarStateImplCopyWith<_$SupportNavigatorBarStateImpl>
      get copyWith => __$$SupportNavigatorBarStateImplCopyWithImpl<
          _$SupportNavigatorBarStateImpl>(this, _$identity);
}

abstract class _SupportNavigatorBarState implements SupportNavigatorBarState {
  const factory _SupportNavigatorBarState(
      {final bool isLoading,
      final Failure? failure}) = _$SupportNavigatorBarStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SupportNavigatorBarStateImplCopyWith<_$SupportNavigatorBarStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
