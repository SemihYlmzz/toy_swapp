// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(
            AvatarImages newAvatarImages, Password currentPassword)
        updateAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(AvatarImages newAvatarImages, Password currentPassword)?
        updateAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(AvatarImages newAvatarImages, Password currentPassword)?
        updateAvatarImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSettingsCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(AccountSettingsUpdateAvatarImage value)
        updateAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(AccountSettingsUpdateAvatarImage value)?
        updateAvatarImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(AccountSettingsUpdateAvatarImage value)? updateAvatarImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsEventCopyWith<$Res> {
  factory $AccountSettingsEventCopyWith(AccountSettingsEvent value,
          $Res Function(AccountSettingsEvent) then) =
      _$AccountSettingsEventCopyWithImpl<$Res, AccountSettingsEvent>;
}

/// @nodoc
class _$AccountSettingsEventCopyWithImpl<$Res,
        $Val extends AccountSettingsEvent>
    implements $AccountSettingsEventCopyWith<$Res> {
  _$AccountSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountSettingsCurrentConsumerUpdatedImplCopyWith<$Res> {
  factory _$$AccountSettingsCurrentConsumerUpdatedImplCopyWith(
          _$AccountSettingsCurrentConsumerUpdatedImpl value,
          $Res Function(_$AccountSettingsCurrentConsumerUpdatedImpl) then) =
      __$$AccountSettingsCurrentConsumerUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Consumer updatedConsumer});

  $ConsumerCopyWith<$Res> get updatedConsumer;
}

/// @nodoc
class __$$AccountSettingsCurrentConsumerUpdatedImplCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res,
        _$AccountSettingsCurrentConsumerUpdatedImpl>
    implements _$$AccountSettingsCurrentConsumerUpdatedImplCopyWith<$Res> {
  __$$AccountSettingsCurrentConsumerUpdatedImplCopyWithImpl(
      _$AccountSettingsCurrentConsumerUpdatedImpl _value,
      $Res Function(_$AccountSettingsCurrentConsumerUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedConsumer = null,
  }) {
    return _then(_$AccountSettingsCurrentConsumerUpdatedImpl(
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

class _$AccountSettingsCurrentConsumerUpdatedImpl
    implements AccountSettingsCurrentConsumerUpdated {
  const _$AccountSettingsCurrentConsumerUpdatedImpl(this.updatedConsumer);

  @override
  final Consumer updatedConsumer;

  @override
  String toString() {
    return 'AccountSettingsEvent.currentConsumerUpdated(updatedConsumer: $updatedConsumer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSettingsCurrentConsumerUpdatedImpl &&
            (identical(other.updatedConsumer, updatedConsumer) ||
                other.updatedConsumer == updatedConsumer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedConsumer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSettingsCurrentConsumerUpdatedImplCopyWith<
          _$AccountSettingsCurrentConsumerUpdatedImpl>
      get copyWith => __$$AccountSettingsCurrentConsumerUpdatedImplCopyWithImpl<
          _$AccountSettingsCurrentConsumerUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(
            AvatarImages newAvatarImages, Password currentPassword)
        updateAvatarImage,
  }) {
    return currentConsumerUpdated(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(AvatarImages newAvatarImages, Password currentPassword)?
        updateAvatarImage,
  }) {
    return currentConsumerUpdated?.call(updatedConsumer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(AvatarImages newAvatarImages, Password currentPassword)?
        updateAvatarImage,
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
    required TResult Function(AccountSettingsCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(AccountSettingsUpdateAvatarImage value)
        updateAvatarImage,
  }) {
    return currentConsumerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(AccountSettingsUpdateAvatarImage value)?
        updateAvatarImage,
  }) {
    return currentConsumerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(AccountSettingsUpdateAvatarImage value)? updateAvatarImage,
    required TResult orElse(),
  }) {
    if (currentConsumerUpdated != null) {
      return currentConsumerUpdated(this);
    }
    return orElse();
  }
}

abstract class AccountSettingsCurrentConsumerUpdated
    implements AccountSettingsEvent {
  const factory AccountSettingsCurrentConsumerUpdated(
          final Consumer updatedConsumer) =
      _$AccountSettingsCurrentConsumerUpdatedImpl;

  Consumer get updatedConsumer;
  @JsonKey(ignore: true)
  _$$AccountSettingsCurrentConsumerUpdatedImplCopyWith<
          _$AccountSettingsCurrentConsumerUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountSettingsUpdateAvatarImageImplCopyWith<$Res> {
  factory _$$AccountSettingsUpdateAvatarImageImplCopyWith(
          _$AccountSettingsUpdateAvatarImageImpl value,
          $Res Function(_$AccountSettingsUpdateAvatarImageImpl) then) =
      __$$AccountSettingsUpdateAvatarImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AvatarImages newAvatarImages, Password currentPassword});
}

/// @nodoc
class __$$AccountSettingsUpdateAvatarImageImplCopyWithImpl<$Res>
    extends _$AccountSettingsEventCopyWithImpl<$Res,
        _$AccountSettingsUpdateAvatarImageImpl>
    implements _$$AccountSettingsUpdateAvatarImageImplCopyWith<$Res> {
  __$$AccountSettingsUpdateAvatarImageImplCopyWithImpl(
      _$AccountSettingsUpdateAvatarImageImpl _value,
      $Res Function(_$AccountSettingsUpdateAvatarImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newAvatarImages = null,
    Object? currentPassword = null,
  }) {
    return _then(_$AccountSettingsUpdateAvatarImageImpl(
      newAvatarImages: null == newAvatarImages
          ? _value.newAvatarImages
          : newAvatarImages // ignore: cast_nullable_to_non_nullable
              as AvatarImages,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$AccountSettingsUpdateAvatarImageImpl
    implements AccountSettingsUpdateAvatarImage {
  const _$AccountSettingsUpdateAvatarImageImpl(
      {required this.newAvatarImages, required this.currentPassword});

  @override
  final AvatarImages newAvatarImages;
  @override
  final Password currentPassword;

  @override
  String toString() {
    return 'AccountSettingsEvent.updateAvatarImage(newAvatarImages: $newAvatarImages, currentPassword: $currentPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSettingsUpdateAvatarImageImpl &&
            (identical(other.newAvatarImages, newAvatarImages) ||
                other.newAvatarImages == newAvatarImages) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, newAvatarImages, currentPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSettingsUpdateAvatarImageImplCopyWith<
          _$AccountSettingsUpdateAvatarImageImpl>
      get copyWith => __$$AccountSettingsUpdateAvatarImageImplCopyWithImpl<
          _$AccountSettingsUpdateAvatarImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Consumer updatedConsumer) currentConsumerUpdated,
    required TResult Function(
            AvatarImages newAvatarImages, Password currentPassword)
        updateAvatarImage,
  }) {
    return updateAvatarImage(newAvatarImages, currentPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult? Function(AvatarImages newAvatarImages, Password currentPassword)?
        updateAvatarImage,
  }) {
    return updateAvatarImage?.call(newAvatarImages, currentPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Consumer updatedConsumer)? currentConsumerUpdated,
    TResult Function(AvatarImages newAvatarImages, Password currentPassword)?
        updateAvatarImage,
    required TResult orElse(),
  }) {
    if (updateAvatarImage != null) {
      return updateAvatarImage(newAvatarImages, currentPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSettingsCurrentConsumerUpdated value)
        currentConsumerUpdated,
    required TResult Function(AccountSettingsUpdateAvatarImage value)
        updateAvatarImage,
  }) {
    return updateAvatarImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult? Function(AccountSettingsUpdateAvatarImage value)?
        updateAvatarImage,
  }) {
    return updateAvatarImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSettingsCurrentConsumerUpdated value)?
        currentConsumerUpdated,
    TResult Function(AccountSettingsUpdateAvatarImage value)? updateAvatarImage,
    required TResult orElse(),
  }) {
    if (updateAvatarImage != null) {
      return updateAvatarImage(this);
    }
    return orElse();
  }
}

abstract class AccountSettingsUpdateAvatarImage
    implements AccountSettingsEvent {
  const factory AccountSettingsUpdateAvatarImage(
          {required final AvatarImages newAvatarImages,
          required final Password currentPassword}) =
      _$AccountSettingsUpdateAvatarImageImpl;

  AvatarImages get newAvatarImages;
  Password get currentPassword;
  @JsonKey(ignore: true)
  _$$AccountSettingsUpdateAvatarImageImplCopyWith<
          _$AccountSettingsUpdateAvatarImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountSettingsState {
  Consumer get currentConsumer => throw _privateConstructorUsedError;
  bool get isValueUpdated => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountSettingsStateCopyWith<AccountSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsStateCopyWith<$Res> {
  factory $AccountSettingsStateCopyWith(AccountSettingsState value,
          $Res Function(AccountSettingsState) then) =
      _$AccountSettingsStateCopyWithImpl<$Res, AccountSettingsState>;
  @useResult
  $Res call(
      {Consumer currentConsumer,
      bool isValueUpdated,
      bool isLoading,
      Failure? failure});

  $ConsumerCopyWith<$Res> get currentConsumer;
}

/// @nodoc
class _$AccountSettingsStateCopyWithImpl<$Res,
        $Val extends AccountSettingsState>
    implements $AccountSettingsStateCopyWith<$Res> {
  _$AccountSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConsumer = null,
    Object? isValueUpdated = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
      isValueUpdated: null == isValueUpdated
          ? _value.isValueUpdated
          : isValueUpdated // ignore: cast_nullable_to_non_nullable
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
  $ConsumerCopyWith<$Res> get currentConsumer {
    return $ConsumerCopyWith<$Res>(_value.currentConsumer, (value) {
      return _then(_value.copyWith(currentConsumer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountSettingsStateImplCopyWith<$Res>
    implements $AccountSettingsStateCopyWith<$Res> {
  factory _$$AccountSettingsStateImplCopyWith(_$AccountSettingsStateImpl value,
          $Res Function(_$AccountSettingsStateImpl) then) =
      __$$AccountSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Consumer currentConsumer,
      bool isValueUpdated,
      bool isLoading,
      Failure? failure});

  @override
  $ConsumerCopyWith<$Res> get currentConsumer;
}

/// @nodoc
class __$$AccountSettingsStateImplCopyWithImpl<$Res>
    extends _$AccountSettingsStateCopyWithImpl<$Res, _$AccountSettingsStateImpl>
    implements _$$AccountSettingsStateImplCopyWith<$Res> {
  __$$AccountSettingsStateImplCopyWithImpl(_$AccountSettingsStateImpl _value,
      $Res Function(_$AccountSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConsumer = null,
    Object? isValueUpdated = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$AccountSettingsStateImpl(
      currentConsumer: null == currentConsumer
          ? _value.currentConsumer
          : currentConsumer // ignore: cast_nullable_to_non_nullable
              as Consumer,
      isValueUpdated: null == isValueUpdated
          ? _value.isValueUpdated
          : isValueUpdated // ignore: cast_nullable_to_non_nullable
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

class _$AccountSettingsStateImpl implements _AccountSettingsState {
  const _$AccountSettingsStateImpl(
      {required this.currentConsumer,
      this.isValueUpdated = false,
      this.isLoading = false,
      this.failure});

  @override
  final Consumer currentConsumer;
  @override
  @JsonKey()
  final bool isValueUpdated;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AccountSettingsState(currentConsumer: $currentConsumer, isValueUpdated: $isValueUpdated, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSettingsStateImpl &&
            (identical(other.currentConsumer, currentConsumer) ||
                other.currentConsumer == currentConsumer) &&
            (identical(other.isValueUpdated, isValueUpdated) ||
                other.isValueUpdated == isValueUpdated) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentConsumer, isValueUpdated, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSettingsStateImplCopyWith<_$AccountSettingsStateImpl>
      get copyWith =>
          __$$AccountSettingsStateImplCopyWithImpl<_$AccountSettingsStateImpl>(
              this, _$identity);
}

abstract class _AccountSettingsState implements AccountSettingsState {
  const factory _AccountSettingsState(
      {required final Consumer currentConsumer,
      final bool isValueUpdated,
      final bool isLoading,
      final Failure? failure}) = _$AccountSettingsStateImpl;

  @override
  Consumer get currentConsumer;
  @override
  bool get isValueUpdated;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AccountSettingsStateImplCopyWith<_$AccountSettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
