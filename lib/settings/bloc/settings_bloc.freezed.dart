// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authSignOut,
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(Auth updatedAuth) currentAuthUpdated,
    required TResult Function(AppMetadata updatedAppMetadata)
        appMetadataUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authSignOut,
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(Auth updatedAuth)? currentAuthUpdated,
    TResult? Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authSignOut,
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(Auth updatedAuth)? currentAuthUpdated,
    TResult Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsAuthSignOut value) authSignOut,
    required TResult Function(SettingsCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(SettingsCurrentAuthUpdated value)
        currentAuthUpdated,
    required TResult Function(SettingsAppMetadataUpdated value)
        appMetadataUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsAuthSignOut value)? authSignOut,
    TResult? Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult? Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsAuthSignOut value)? authSignOut,
    TResult Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsAuthSignOutImplCopyWith<$Res> {
  factory _$$SettingsAuthSignOutImplCopyWith(_$SettingsAuthSignOutImpl value,
          $Res Function(_$SettingsAuthSignOutImpl) then) =
      __$$SettingsAuthSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsAuthSignOutImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsAuthSignOutImpl>
    implements _$$SettingsAuthSignOutImplCopyWith<$Res> {
  __$$SettingsAuthSignOutImplCopyWithImpl(_$SettingsAuthSignOutImpl _value,
      $Res Function(_$SettingsAuthSignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsAuthSignOutImpl implements SettingsAuthSignOut {
  const _$SettingsAuthSignOutImpl();

  @override
  String toString() {
    return 'SettingsEvent.authSignOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsAuthSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authSignOut,
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(Auth updatedAuth) currentAuthUpdated,
    required TResult Function(AppMetadata updatedAppMetadata)
        appMetadataUpdated,
  }) {
    return authSignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authSignOut,
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(Auth updatedAuth)? currentAuthUpdated,
    TResult? Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
  }) {
    return authSignOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authSignOut,
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(Auth updatedAuth)? currentAuthUpdated,
    TResult Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
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
    required TResult Function(SettingsAuthSignOut value) authSignOut,
    required TResult Function(SettingsCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(SettingsCurrentAuthUpdated value)
        currentAuthUpdated,
    required TResult Function(SettingsAppMetadataUpdated value)
        appMetadataUpdated,
  }) {
    return authSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsAuthSignOut value)? authSignOut,
    TResult? Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult? Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
  }) {
    return authSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsAuthSignOut value)? authSignOut,
    TResult Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (authSignOut != null) {
      return authSignOut(this);
    }
    return orElse();
  }
}

abstract class SettingsAuthSignOut implements SettingsEvent {
  const factory SettingsAuthSignOut() = _$SettingsAuthSignOutImpl;
}

/// @nodoc
abstract class _$$SettingsCurrentConsumerUpdatedImplCopyWith<$Res> {
  factory _$$SettingsCurrentConsumerUpdatedImplCopyWith(
          _$SettingsCurrentConsumerUpdatedImpl value,
          $Res Function(_$SettingsCurrentConsumerUpdatedImpl) then) =
      __$$SettingsCurrentConsumerUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Consumer updatedConsumer});

  $ConsumerCopyWith<$Res> get updatedConsumer;
}

/// @nodoc
class __$$SettingsCurrentConsumerUpdatedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res,
        _$SettingsCurrentConsumerUpdatedImpl>
    implements _$$SettingsCurrentConsumerUpdatedImplCopyWith<$Res> {
  __$$SettingsCurrentConsumerUpdatedImplCopyWithImpl(
      _$SettingsCurrentConsumerUpdatedImpl _value,
      $Res Function(_$SettingsCurrentConsumerUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedConsumer = null,
  }) {
    return _then(_$SettingsCurrentConsumerUpdatedImpl(
      null == updatedConsumer
          ? _value.updatedConsumer
          : updatedConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsumerCopyWith<$Res> get updatedConsumer {
    return $ConsumerCopyWith<$Res>(_value.updatedConsumer, (value) {
      return _then(_value.copyWith(updatedConsumer: value));
    });
  }
}

/// @nodoc

class _$SettingsCurrentConsumerUpdatedImpl
    implements SettingsCurrentConsumerUpdated {
  const _$SettingsCurrentConsumerUpdatedImpl(this.updatedConsumer);

  @override
  final Consumer updatedConsumer;

  @override
  String toString() {
    return 'SettingsEvent.currentConsumerUpdated(updatedConsumer: $updatedConsumer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsCurrentConsumerUpdatedImpl &&
            (identical(other.updatedConsumer, updatedConsumer) ||
                other.updatedConsumer == updatedConsumer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedConsumer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsCurrentConsumerUpdatedImplCopyWith<
          _$SettingsCurrentConsumerUpdatedImpl>
      get copyWith => __$$SettingsCurrentConsumerUpdatedImplCopyWithImpl<
          _$SettingsCurrentConsumerUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authSignOut,
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(Auth updatedAuth) currentAuthUpdated,
    required TResult Function(AppMetadata updatedAppMetadata)
        appMetadataUpdated,
  }) {
    return currentConsumerUpdated(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authSignOut,
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(Auth updatedAuth)? currentAuthUpdated,
    TResult? Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
  }) {
    return currentConsumerUpdated?.call(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authSignOut,
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(Auth updatedAuth)? currentAuthUpdated,
    TResult Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (currentConsumerUpdated != null) {
      return currentConsumerUpdated(updatedConsumer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsAuthSignOut value) authSignOut,
    required TResult Function(SettingsCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(SettingsCurrentAuthUpdated value)
        currentAuthUpdated,
    required TResult Function(SettingsAppMetadataUpdated value)
        appMetadataUpdated,
  }) {
    return currentConsumerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsAuthSignOut value)? authSignOut,
    TResult? Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult? Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
  }) {
    return currentConsumerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsAuthSignOut value)? authSignOut,
    TResult Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (currentConsumerUpdated != null) {
      return currentConsumerUpdated(this);
    }
    return orElse();
  }
}

abstract class SettingsCurrentConsumerUpdated implements SettingsEvent {
  const factory SettingsCurrentConsumerUpdated(final Consumer updatedConsumer) =
      _$SettingsCurrentConsumerUpdatedImpl;

  Consumer get updatedConsumer;
  @JsonKey(ignore: true)
  _$$SettingsCurrentConsumerUpdatedImplCopyWith<
          _$SettingsCurrentConsumerUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsCurrentAuthUpdatedImplCopyWith<$Res> {
  factory _$$SettingsCurrentAuthUpdatedImplCopyWith(
          _$SettingsCurrentAuthUpdatedImpl value,
          $Res Function(_$SettingsCurrentAuthUpdatedImpl) then) =
      __$$SettingsCurrentAuthUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Auth updatedAuth});

  $AuthCopyWith<$Res> get updatedAuth;
}

/// @nodoc
class __$$SettingsCurrentAuthUpdatedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsCurrentAuthUpdatedImpl>
    implements _$$SettingsCurrentAuthUpdatedImplCopyWith<$Res> {
  __$$SettingsCurrentAuthUpdatedImplCopyWithImpl(
      _$SettingsCurrentAuthUpdatedImpl _value,
      $Res Function(_$SettingsCurrentAuthUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAuth = null,
  }) {
    return _then(_$SettingsCurrentAuthUpdatedImpl(
      null == updatedAuth
          ? _value.updatedAuth
          : updatedAuth // ignore: cast_nullable_to_non_nullable
              as Auth,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res> get updatedAuth {
    return $AuthCopyWith<$Res>(_value.updatedAuth, (value) {
      return _then(_value.copyWith(updatedAuth: value));
    });
  }
}

/// @nodoc

class _$SettingsCurrentAuthUpdatedImpl implements SettingsCurrentAuthUpdated {
  const _$SettingsCurrentAuthUpdatedImpl(this.updatedAuth);

  @override
  final Auth updatedAuth;

  @override
  String toString() {
    return 'SettingsEvent.currentAuthUpdated(updatedAuth: $updatedAuth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsCurrentAuthUpdatedImpl &&
            (identical(other.updatedAuth, updatedAuth) ||
                other.updatedAuth == updatedAuth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedAuth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsCurrentAuthUpdatedImplCopyWith<_$SettingsCurrentAuthUpdatedImpl>
      get copyWith => __$$SettingsCurrentAuthUpdatedImplCopyWithImpl<
          _$SettingsCurrentAuthUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authSignOut,
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(Auth updatedAuth) currentAuthUpdated,
    required TResult Function(AppMetadata updatedAppMetadata)
        appMetadataUpdated,
  }) {
    return currentAuthUpdated(updatedAuth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authSignOut,
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(Auth updatedAuth)? currentAuthUpdated,
    TResult? Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
  }) {
    return currentAuthUpdated?.call(updatedAuth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authSignOut,
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(Auth updatedAuth)? currentAuthUpdated,
    TResult Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (currentAuthUpdated != null) {
      return currentAuthUpdated(updatedAuth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsAuthSignOut value) authSignOut,
    required TResult Function(SettingsCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(SettingsCurrentAuthUpdated value)
        currentAuthUpdated,
    required TResult Function(SettingsAppMetadataUpdated value)
        appMetadataUpdated,
  }) {
    return currentAuthUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsAuthSignOut value)? authSignOut,
    TResult? Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult? Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
  }) {
    return currentAuthUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsAuthSignOut value)? authSignOut,
    TResult Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (currentAuthUpdated != null) {
      return currentAuthUpdated(this);
    }
    return orElse();
  }
}

abstract class SettingsCurrentAuthUpdated implements SettingsEvent {
  const factory SettingsCurrentAuthUpdated(final Auth updatedAuth) =
      _$SettingsCurrentAuthUpdatedImpl;

  Auth get updatedAuth;
  @JsonKey(ignore: true)
  _$$SettingsCurrentAuthUpdatedImplCopyWith<_$SettingsCurrentAuthUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsAppMetadataUpdatedImplCopyWith<$Res> {
  factory _$$SettingsAppMetadataUpdatedImplCopyWith(
          _$SettingsAppMetadataUpdatedImpl value,
          $Res Function(_$SettingsAppMetadataUpdatedImpl) then) =
      __$$SettingsAppMetadataUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppMetadata updatedAppMetadata});

  $AppMetadataCopyWith<$Res> get updatedAppMetadata;
}

/// @nodoc
class __$$SettingsAppMetadataUpdatedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsAppMetadataUpdatedImpl>
    implements _$$SettingsAppMetadataUpdatedImplCopyWith<$Res> {
  __$$SettingsAppMetadataUpdatedImplCopyWithImpl(
      _$SettingsAppMetadataUpdatedImpl _value,
      $Res Function(_$SettingsAppMetadataUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAppMetadata = null,
  }) {
    return _then(_$SettingsAppMetadataUpdatedImpl(
      null == updatedAppMetadata
          ? _value.updatedAppMetadata
          : updatedAppMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetadataCopyWith<$Res> get updatedAppMetadata {
    return $AppMetadataCopyWith<$Res>(_value.updatedAppMetadata, (value) {
      return _then(_value.copyWith(updatedAppMetadata: value));
    });
  }
}

/// @nodoc

class _$SettingsAppMetadataUpdatedImpl implements SettingsAppMetadataUpdated {
  const _$SettingsAppMetadataUpdatedImpl(this.updatedAppMetadata);

  @override
  final AppMetadata updatedAppMetadata;

  @override
  String toString() {
    return 'SettingsEvent.appMetadataUpdated(updatedAppMetadata: $updatedAppMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsAppMetadataUpdatedImpl &&
            (identical(other.updatedAppMetadata, updatedAppMetadata) ||
                other.updatedAppMetadata == updatedAppMetadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedAppMetadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsAppMetadataUpdatedImplCopyWith<_$SettingsAppMetadataUpdatedImpl>
      get copyWith => __$$SettingsAppMetadataUpdatedImplCopyWithImpl<
          _$SettingsAppMetadataUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authSignOut,
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(Auth updatedAuth) currentAuthUpdated,
    required TResult Function(AppMetadata updatedAppMetadata)
        appMetadataUpdated,
  }) {
    return appMetadataUpdated(updatedAppMetadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authSignOut,
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(Auth updatedAuth)? currentAuthUpdated,
    TResult? Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
  }) {
    return appMetadataUpdated?.call(updatedAppMetadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authSignOut,
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(Auth updatedAuth)? currentAuthUpdated,
    TResult Function(AppMetadata updatedAppMetadata)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (appMetadataUpdated != null) {
      return appMetadataUpdated(updatedAppMetadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsAuthSignOut value) authSignOut,
    required TResult Function(SettingsCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(SettingsCurrentAuthUpdated value)
        currentAuthUpdated,
    required TResult Function(SettingsAppMetadataUpdated value)
        appMetadataUpdated,
  }) {
    return appMetadataUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsAuthSignOut value)? authSignOut,
    TResult? Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult? Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
  }) {
    return appMetadataUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsAuthSignOut value)? authSignOut,
    TResult Function(SettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(SettingsCurrentAuthUpdated value)? currentAuthUpdated,
    TResult Function(SettingsAppMetadataUpdated value)? appMetadataUpdated,
    required TResult orElse(),
  }) {
    if (appMetadataUpdated != null) {
      return appMetadataUpdated(this);
    }
    return orElse();
  }
}

abstract class SettingsAppMetadataUpdated implements SettingsEvent {
  const factory SettingsAppMetadataUpdated(
      final AppMetadata updatedAppMetadata) = _$SettingsAppMetadataUpdatedImpl;

  AppMetadata get updatedAppMetadata;
  @JsonKey(ignore: true)
  _$$SettingsAppMetadataUpdatedImplCopyWith<_$SettingsAppMetadataUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  AppMetadata get appMetadata => throw _privateConstructorUsedError;
  Consumer get currentConsumer => throw _privateConstructorUsedError;
  Auth get currentAuth => throw _privateConstructorUsedError;
  bool get isSignOutCompleted => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {AppMetadata appMetadata,
      Consumer currentConsumer,
      Auth currentAuth,
      bool isSignOutCompleted,
      bool isLoading,
      Failure? failure});

  $AppMetadataCopyWith<$Res> get appMetadata;
  $ConsumerCopyWith<$Res> get currentConsumer;
  $AuthCopyWith<$Res> get currentAuth;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appMetadata = null,
    Object? currentConsumer = null,
    Object? currentAuth = null,
    Object? isSignOutCompleted = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
      currentAuth: null == currentAuth
          ? _value.currentAuth
          : currentAuth // ignore: cast_nullable_to_non_nullable
              as Auth,
      isSignOutCompleted: null == isSignOutCompleted
          ? _value.isSignOutCompleted
          : isSignOutCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $AppMetadataCopyWith<$Res> get appMetadata {
    return $AppMetadataCopyWith<$Res>(_value.appMetadata, (value) {
      return _then(_value.copyWith(appMetadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsumerCopyWith<$Res> get currentConsumer {
    return $ConsumerCopyWith<$Res>(_value.currentConsumer, (value) {
      return _then(_value.copyWith(currentConsumer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res> get currentAuth {
    return $AuthCopyWith<$Res>(_value.currentAuth, (value) {
      return _then(_value.copyWith(currentAuth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppMetadata appMetadata,
      Consumer currentConsumer,
      Auth currentAuth,
      bool isSignOutCompleted,
      bool isLoading,
      Failure? failure});

  @override
  $AppMetadataCopyWith<$Res> get appMetadata;
  @override
  $ConsumerCopyWith<$Res> get currentConsumer;
  @override
  $AuthCopyWith<$Res> get currentAuth;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appMetadata = null,
    Object? currentConsumer = null,
    Object? currentAuth = null,
    Object? isSignOutCompleted = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SettingsStateImpl(
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
      currentAuth: null == currentAuth
          ? _value.currentAuth
          : currentAuth // ignore: cast_nullable_to_non_nullable
              as Auth,
      isSignOutCompleted: null == isSignOutCompleted
          ? _value.isSignOutCompleted
          : isSignOutCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl(
      {required this.appMetadata,
      required this.currentConsumer,
      required this.currentAuth,
      this.isSignOutCompleted = false,
      this.isLoading = false,
      this.failure});

  @override
  final AppMetadata appMetadata;
  @override
  final Consumer currentConsumer;
  @override
  final Auth currentAuth;
  @override
  @JsonKey()
  final bool isSignOutCompleted;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SettingsState(appMetadata: $appMetadata, currentConsumer: $currentConsumer, currentAuth: $currentAuth, isSignOutCompleted: $isSignOutCompleted, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.appMetadata, appMetadata) ||
                other.appMetadata == appMetadata) &&
            (identical(other.currentConsumer, currentConsumer) ||
                other.currentConsumer == currentConsumer) &&
            (identical(other.currentAuth, currentAuth) ||
                other.currentAuth == currentAuth) &&
            (identical(other.isSignOutCompleted, isSignOutCompleted) ||
                other.isSignOutCompleted == isSignOutCompleted) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appMetadata, currentConsumer,
      currentAuth, isSignOutCompleted, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final AppMetadata appMetadata,
      required final Consumer currentConsumer,
      required final Auth currentAuth,
      final bool isSignOutCompleted,
      final bool isLoading,
      final Failure? failure}) = _$SettingsStateImpl;

  @override
  AppMetadata get appMetadata;
  @override
  Consumer get currentConsumer;
  @override
  Auth get currentAuth;
  @override
  bool get isSignOutCompleted;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
