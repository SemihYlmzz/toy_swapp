// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthSignInEvent {
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
    required TResult Function(AuthSignInFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignInEventCopyWith<$Res> {
  factory $AuthSignInEventCopyWith(
          AuthSignInEvent value, $Res Function(AuthSignInEvent) then) =
      _$AuthSignInEventCopyWithImpl<$Res, AuthSignInEvent>;
}

/// @nodoc
class _$AuthSignInEventCopyWithImpl<$Res, $Val extends AuthSignInEvent>
    implements $AuthSignInEventCopyWith<$Res> {
  _$AuthSignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthSignInFetchImplCopyWith<$Res> {
  factory _$$AuthSignInFetchImplCopyWith(_$AuthSignInFetchImpl value,
          $Res Function(_$AuthSignInFetchImpl) then) =
      __$$AuthSignInFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignInFetchImplCopyWithImpl<$Res>
    extends _$AuthSignInEventCopyWithImpl<$Res, _$AuthSignInFetchImpl>
    implements _$$AuthSignInFetchImplCopyWith<$Res> {
  __$$AuthSignInFetchImplCopyWithImpl(
      _$AuthSignInFetchImpl _value, $Res Function(_$AuthSignInFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignInFetchImpl implements AuthSignInFetch {
  const _$AuthSignInFetchImpl();

  @override
  String toString() {
    return 'AuthSignInEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignInFetchImpl);
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
    required TResult Function(AuthSignInFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AuthSignInFetch implements AuthSignInEvent {
  const factory AuthSignInFetch() = _$AuthSignInFetchImpl;
}

/// @nodoc
mixin _$AuthSignInState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthSignInStateCopyWith<AuthSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignInStateCopyWith<$Res> {
  factory $AuthSignInStateCopyWith(
          AuthSignInState value, $Res Function(AuthSignInState) then) =
      _$AuthSignInStateCopyWithImpl<$Res, AuthSignInState>;
  @useResult
  $Res call({bool isLoading, String? errorMessage});
}

/// @nodoc
class _$AuthSignInStateCopyWithImpl<$Res, $Val extends AuthSignInState>
    implements $AuthSignInStateCopyWith<$Res> {
  _$AuthSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthSignInStateImplCopyWith<$Res>
    implements $AuthSignInStateCopyWith<$Res> {
  factory _$$AuthSignInStateImplCopyWith(_$AuthSignInStateImpl value,
          $Res Function(_$AuthSignInStateImpl) then) =
      __$$AuthSignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$AuthSignInStateImplCopyWithImpl<$Res>
    extends _$AuthSignInStateCopyWithImpl<$Res, _$AuthSignInStateImpl>
    implements _$$AuthSignInStateImplCopyWith<$Res> {
  __$$AuthSignInStateImplCopyWithImpl(
      _$AuthSignInStateImpl _value, $Res Function(_$AuthSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthSignInStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthSignInStateImpl implements _AuthSignInState {
  const _$AuthSignInStateImpl(
      {this.isLoading = false, this.errorMessage = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthSignInState(isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInStateImplCopyWith<_$AuthSignInStateImpl> get copyWith =>
      __$$AuthSignInStateImplCopyWithImpl<_$AuthSignInStateImpl>(
          this, _$identity);
}

abstract class _AuthSignInState implements AuthSignInState {
  const factory _AuthSignInState(
      {final bool isLoading,
      final String? errorMessage}) = _$AuthSignInStateImpl;

  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AuthSignInStateImplCopyWith<_$AuthSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
