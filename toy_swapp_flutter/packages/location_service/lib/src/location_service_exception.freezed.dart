// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_service_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationServiceException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationServiceExceptionUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationServiceExceptionUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationServiceExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationServiceExceptionCopyWith<$Res> {
  factory $LocationServiceExceptionCopyWith(LocationServiceException value,
          $Res Function(LocationServiceException) then) =
      _$LocationServiceExceptionCopyWithImpl<$Res, LocationServiceException>;
}

/// @nodoc
class _$LocationServiceExceptionCopyWithImpl<$Res,
        $Val extends LocationServiceException>
    implements $LocationServiceExceptionCopyWith<$Res> {
  _$LocationServiceExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationServiceExceptionUnknownImplCopyWith<$Res> {
  factory _$$LocationServiceExceptionUnknownImplCopyWith(
          _$LocationServiceExceptionUnknownImpl value,
          $Res Function(_$LocationServiceExceptionUnknownImpl) then) =
      __$$LocationServiceExceptionUnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationServiceExceptionUnknownImplCopyWithImpl<$Res>
    extends _$LocationServiceExceptionCopyWithImpl<$Res,
        _$LocationServiceExceptionUnknownImpl>
    implements _$$LocationServiceExceptionUnknownImplCopyWith<$Res> {
  __$$LocationServiceExceptionUnknownImplCopyWithImpl(
      _$LocationServiceExceptionUnknownImpl _value,
      $Res Function(_$LocationServiceExceptionUnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationServiceExceptionUnknownImpl
    implements LocationServiceExceptionUnknown {
  const _$LocationServiceExceptionUnknownImpl();

  @override
  String toString() {
    return 'LocationServiceException.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationServiceExceptionUnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationServiceExceptionUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationServiceExceptionUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationServiceExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class LocationServiceExceptionUnknown
    implements LocationServiceException {
  const factory LocationServiceExceptionUnknown() =
      _$LocationServiceExceptionUnknownImpl;
}
