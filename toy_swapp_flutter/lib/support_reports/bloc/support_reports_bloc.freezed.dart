// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_reports_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupportReportsEvent {
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
    required TResult Function(SupportReportsFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportReportsFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportReportsFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportReportsEventCopyWith<$Res> {
  factory $SupportReportsEventCopyWith(
          SupportReportsEvent value, $Res Function(SupportReportsEvent) then) =
      _$SupportReportsEventCopyWithImpl<$Res, SupportReportsEvent>;
}

/// @nodoc
class _$SupportReportsEventCopyWithImpl<$Res, $Val extends SupportReportsEvent>
    implements $SupportReportsEventCopyWith<$Res> {
  _$SupportReportsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SupportReportsFetchImplCopyWith<$Res> {
  factory _$$SupportReportsFetchImplCopyWith(_$SupportReportsFetchImpl value,
          $Res Function(_$SupportReportsFetchImpl) then) =
      __$$SupportReportsFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SupportReportsFetchImplCopyWithImpl<$Res>
    extends _$SupportReportsEventCopyWithImpl<$Res, _$SupportReportsFetchImpl>
    implements _$$SupportReportsFetchImplCopyWith<$Res> {
  __$$SupportReportsFetchImplCopyWithImpl(_$SupportReportsFetchImpl _value,
      $Res Function(_$SupportReportsFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SupportReportsFetchImpl implements SupportReportsFetch {
  const _$SupportReportsFetchImpl();

  @override
  String toString() {
    return 'SupportReportsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportReportsFetchImpl);
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
    required TResult Function(SupportReportsFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SupportReportsFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SupportReportsFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class SupportReportsFetch implements SupportReportsEvent {
  const factory SupportReportsFetch() = _$SupportReportsFetchImpl;
}

/// @nodoc
mixin _$SupportReportsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportReportsStateCopyWith<SupportReportsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportReportsStateCopyWith<$Res> {
  factory $SupportReportsStateCopyWith(
          SupportReportsState value, $Res Function(SupportReportsState) then) =
      _$SupportReportsStateCopyWithImpl<$Res, SupportReportsState>;
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class _$SupportReportsStateCopyWithImpl<$Res, $Val extends SupportReportsState>
    implements $SupportReportsStateCopyWith<$Res> {
  _$SupportReportsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SupportReportsStateImplCopyWith<$Res>
    implements $SupportReportsStateCopyWith<$Res> {
  factory _$$SupportReportsStateImplCopyWith(_$SupportReportsStateImpl value,
          $Res Function(_$SupportReportsStateImpl) then) =
      __$$SupportReportsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? failure});
}

/// @nodoc
class __$$SupportReportsStateImplCopyWithImpl<$Res>
    extends _$SupportReportsStateCopyWithImpl<$Res, _$SupportReportsStateImpl>
    implements _$$SupportReportsStateImplCopyWith<$Res> {
  __$$SupportReportsStateImplCopyWithImpl(_$SupportReportsStateImpl _value,
      $Res Function(_$SupportReportsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SupportReportsStateImpl(
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

class _$SupportReportsStateImpl implements _SupportReportsState {
  const _$SupportReportsStateImpl({this.isLoading = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SupportReportsState(isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportReportsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportReportsStateImplCopyWith<_$SupportReportsStateImpl> get copyWith =>
      __$$SupportReportsStateImplCopyWithImpl<_$SupportReportsStateImpl>(
          this, _$identity);
}

abstract class _SupportReportsState implements SupportReportsState {
  const factory _SupportReportsState(
      {final bool isLoading,
      final Failure? failure}) = _$SupportReportsStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SupportReportsStateImplCopyWith<_$SupportReportsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
