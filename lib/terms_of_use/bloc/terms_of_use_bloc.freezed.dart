// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_of_use_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TermsOfUseEvent {
  int get acceptedAppBuildNumber => throw _privateConstructorUsedError;
  int get acceptedTermsReleaseNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int acceptedAppBuildNumber, int acceptedTermsReleaseNumber)
        acceptTermsOfUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int acceptedAppBuildNumber, int acceptedTermsReleaseNumber)?
        acceptTermsOfUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int acceptedAppBuildNumber, int acceptedTermsReleaseNumber)?
        acceptTermsOfUse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TermsOfUseAcceptTermsOfUse value)
        acceptTermsOfUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TermsOfUseAcceptTermsOfUse value)? acceptTermsOfUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TermsOfUseAcceptTermsOfUse value)? acceptTermsOfUse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsOfUseEventCopyWith<TermsOfUseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsOfUseEventCopyWith<$Res> {
  factory $TermsOfUseEventCopyWith(
          TermsOfUseEvent value, $Res Function(TermsOfUseEvent) then) =
      _$TermsOfUseEventCopyWithImpl<$Res, TermsOfUseEvent>;
  @useResult
  $Res call({int acceptedAppBuildNumber, int acceptedTermsReleaseNumber});
}

/// @nodoc
class _$TermsOfUseEventCopyWithImpl<$Res, $Val extends TermsOfUseEvent>
    implements $TermsOfUseEventCopyWith<$Res> {
  _$TermsOfUseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedAppBuildNumber = null,
    Object? acceptedTermsReleaseNumber = null,
  }) {
    return _then(_value.copyWith(
      acceptedAppBuildNumber: null == acceptedAppBuildNumber
          ? _value.acceptedAppBuildNumber
          : acceptedAppBuildNumber // ignore: cast_nullable_to_non_nullable
              as int,
      acceptedTermsReleaseNumber: null == acceptedTermsReleaseNumber
          ? _value.acceptedTermsReleaseNumber
          : acceptedTermsReleaseNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermsOfUseAcceptTermsOfUseImplCopyWith<$Res>
    implements $TermsOfUseEventCopyWith<$Res> {
  factory _$$TermsOfUseAcceptTermsOfUseImplCopyWith(
          _$TermsOfUseAcceptTermsOfUseImpl value,
          $Res Function(_$TermsOfUseAcceptTermsOfUseImpl) then) =
      __$$TermsOfUseAcceptTermsOfUseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int acceptedAppBuildNumber, int acceptedTermsReleaseNumber});
}

/// @nodoc
class __$$TermsOfUseAcceptTermsOfUseImplCopyWithImpl<$Res>
    extends _$TermsOfUseEventCopyWithImpl<$Res,
        _$TermsOfUseAcceptTermsOfUseImpl>
    implements _$$TermsOfUseAcceptTermsOfUseImplCopyWith<$Res> {
  __$$TermsOfUseAcceptTermsOfUseImplCopyWithImpl(
      _$TermsOfUseAcceptTermsOfUseImpl _value,
      $Res Function(_$TermsOfUseAcceptTermsOfUseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedAppBuildNumber = null,
    Object? acceptedTermsReleaseNumber = null,
  }) {
    return _then(_$TermsOfUseAcceptTermsOfUseImpl(
      acceptedAppBuildNumber: null == acceptedAppBuildNumber
          ? _value.acceptedAppBuildNumber
          : acceptedAppBuildNumber // ignore: cast_nullable_to_non_nullable
              as int,
      acceptedTermsReleaseNumber: null == acceptedTermsReleaseNumber
          ? _value.acceptedTermsReleaseNumber
          : acceptedTermsReleaseNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TermsOfUseAcceptTermsOfUseImpl implements TermsOfUseAcceptTermsOfUse {
  const _$TermsOfUseAcceptTermsOfUseImpl(
      {required this.acceptedAppBuildNumber,
      required this.acceptedTermsReleaseNumber});

  @override
  final int acceptedAppBuildNumber;
  @override
  final int acceptedTermsReleaseNumber;

  @override
  String toString() {
    return 'TermsOfUseEvent.acceptTermsOfUse(acceptedAppBuildNumber: $acceptedAppBuildNumber, acceptedTermsReleaseNumber: $acceptedTermsReleaseNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsOfUseAcceptTermsOfUseImpl &&
            (identical(other.acceptedAppBuildNumber, acceptedAppBuildNumber) ||
                other.acceptedAppBuildNumber == acceptedAppBuildNumber) &&
            (identical(other.acceptedTermsReleaseNumber,
                    acceptedTermsReleaseNumber) ||
                other.acceptedTermsReleaseNumber ==
                    acceptedTermsReleaseNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, acceptedAppBuildNumber, acceptedTermsReleaseNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsOfUseAcceptTermsOfUseImplCopyWith<_$TermsOfUseAcceptTermsOfUseImpl>
      get copyWith => __$$TermsOfUseAcceptTermsOfUseImplCopyWithImpl<
          _$TermsOfUseAcceptTermsOfUseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int acceptedAppBuildNumber, int acceptedTermsReleaseNumber)
        acceptTermsOfUse,
  }) {
    return acceptTermsOfUse(acceptedAppBuildNumber, acceptedTermsReleaseNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int acceptedAppBuildNumber, int acceptedTermsReleaseNumber)?
        acceptTermsOfUse,
  }) {
    return acceptTermsOfUse?.call(
        acceptedAppBuildNumber, acceptedTermsReleaseNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int acceptedAppBuildNumber, int acceptedTermsReleaseNumber)?
        acceptTermsOfUse,
    required TResult orElse(),
  }) {
    if (acceptTermsOfUse != null) {
      return acceptTermsOfUse(
          acceptedAppBuildNumber, acceptedTermsReleaseNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TermsOfUseAcceptTermsOfUse value)
        acceptTermsOfUse,
  }) {
    return acceptTermsOfUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TermsOfUseAcceptTermsOfUse value)? acceptTermsOfUse,
  }) {
    return acceptTermsOfUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TermsOfUseAcceptTermsOfUse value)? acceptTermsOfUse,
    required TResult orElse(),
  }) {
    if (acceptTermsOfUse != null) {
      return acceptTermsOfUse(this);
    }
    return orElse();
  }
}

abstract class TermsOfUseAcceptTermsOfUse implements TermsOfUseEvent {
  const factory TermsOfUseAcceptTermsOfUse(
          {required final int acceptedAppBuildNumber,
          required final int acceptedTermsReleaseNumber}) =
      _$TermsOfUseAcceptTermsOfUseImpl;

  @override
  int get acceptedAppBuildNumber;
  @override
  int get acceptedTermsReleaseNumber;
  @override
  @JsonKey(ignore: true)
  _$$TermsOfUseAcceptTermsOfUseImplCopyWith<_$TermsOfUseAcceptTermsOfUseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TermsOfUseState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsOfUseStateCopyWith<TermsOfUseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsOfUseStateCopyWith<$Res> {
  factory $TermsOfUseStateCopyWith(
          TermsOfUseState value, $Res Function(TermsOfUseState) then) =
      _$TermsOfUseStateCopyWithImpl<$Res, TermsOfUseState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$TermsOfUseStateCopyWithImpl<$Res, $Val extends TermsOfUseState>
    implements $TermsOfUseStateCopyWith<$Res> {
  _$TermsOfUseStateCopyWithImpl(this._value, this._then);

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
abstract class _$$TermsOfUseStateImplCopyWith<$Res>
    implements $TermsOfUseStateCopyWith<$Res> {
  factory _$$TermsOfUseStateImplCopyWith(_$TermsOfUseStateImpl value,
          $Res Function(_$TermsOfUseStateImpl) then) =
      __$$TermsOfUseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$TermsOfUseStateImplCopyWithImpl<$Res>
    extends _$TermsOfUseStateCopyWithImpl<$Res, _$TermsOfUseStateImpl>
    implements _$$TermsOfUseStateImplCopyWith<$Res> {
  __$$TermsOfUseStateImplCopyWithImpl(
      _$TermsOfUseStateImpl _value, $Res Function(_$TermsOfUseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$TermsOfUseStateImpl(
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

class _$TermsOfUseStateImpl implements _TermsOfUseState {
  const _$TermsOfUseStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'TermsOfUseState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsOfUseStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsOfUseStateImplCopyWith<_$TermsOfUseStateImpl> get copyWith =>
      __$$TermsOfUseStateImplCopyWithImpl<_$TermsOfUseStateImpl>(
          this, _$identity);
}

abstract class _TermsOfUseState implements TermsOfUseState {
  const factory _TermsOfUseState(
      {final bool isLoading, final Failure? failure}) = _$TermsOfUseStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$TermsOfUseStateImplCopyWith<_$TermsOfUseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
