// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountSettingsCubitState {
  AccountSettingsViewState get currentViewState =>
      throw _privateConstructorUsedError;
  Password get currentPassword => throw _privateConstructorUsedError;
  Uint8List? get selectedAvatar => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountSettingsCubitStateCopyWith<AccountSettingsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsCubitStateCopyWith<$Res> {
  factory $AccountSettingsCubitStateCopyWith(AccountSettingsCubitState value,
          $Res Function(AccountSettingsCubitState) then) =
      _$AccountSettingsCubitStateCopyWithImpl<$Res, AccountSettingsCubitState>;
  @useResult
  $Res call(
      {AccountSettingsViewState currentViewState,
      Password currentPassword,
      Uint8List? selectedAvatar,
      Failure? failure});
}

/// @nodoc
class _$AccountSettingsCubitStateCopyWithImpl<$Res,
        $Val extends AccountSettingsCubitState>
    implements $AccountSettingsCubitStateCopyWith<$Res> {
  _$AccountSettingsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentViewState = null,
    Object? currentPassword = null,
    Object? selectedAvatar = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentViewState: null == currentViewState
          ? _value.currentViewState
          : currentViewState // ignore: cast_nullable_to_non_nullable
              as AccountSettingsViewState,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      selectedAvatar: freezed == selectedAvatar
          ? _value.selectedAvatar
          : selectedAvatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountSettingsCubitStateImplCopyWith<$Res>
    implements $AccountSettingsCubitStateCopyWith<$Res> {
  factory _$$AccountSettingsCubitStateImplCopyWith(
          _$AccountSettingsCubitStateImpl value,
          $Res Function(_$AccountSettingsCubitStateImpl) then) =
      __$$AccountSettingsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountSettingsViewState currentViewState,
      Password currentPassword,
      Uint8List? selectedAvatar,
      Failure? failure});
}

/// @nodoc
class __$$AccountSettingsCubitStateImplCopyWithImpl<$Res>
    extends _$AccountSettingsCubitStateCopyWithImpl<$Res,
        _$AccountSettingsCubitStateImpl>
    implements _$$AccountSettingsCubitStateImplCopyWith<$Res> {
  __$$AccountSettingsCubitStateImplCopyWithImpl(
      _$AccountSettingsCubitStateImpl _value,
      $Res Function(_$AccountSettingsCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentViewState = null,
    Object? currentPassword = null,
    Object? selectedAvatar = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$AccountSettingsCubitStateImpl(
      currentViewState: null == currentViewState
          ? _value.currentViewState
          : currentViewState // ignore: cast_nullable_to_non_nullable
              as AccountSettingsViewState,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      selectedAvatar: freezed == selectedAvatar
          ? _value.selectedAvatar
          : selectedAvatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$AccountSettingsCubitStateImpl implements _AccountSettingsCubitState {
  const _$AccountSettingsCubitStateImpl(
      {this.currentViewState = AccountSettingsViewState.navigation,
      this.currentPassword = const Password.pure(),
      this.selectedAvatar,
      this.failure});

  @override
  @JsonKey()
  final AccountSettingsViewState currentViewState;
  @override
  @JsonKey()
  final Password currentPassword;
  @override
  final Uint8List? selectedAvatar;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AccountSettingsCubitState(currentViewState: $currentViewState, currentPassword: $currentPassword, selectedAvatar: $selectedAvatar, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSettingsCubitStateImpl &&
            (identical(other.currentViewState, currentViewState) ||
                other.currentViewState == currentViewState) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            const DeepCollectionEquality()
                .equals(other.selectedAvatar, selectedAvatar) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentViewState,
      currentPassword,
      const DeepCollectionEquality().hash(selectedAvatar),
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSettingsCubitStateImplCopyWith<_$AccountSettingsCubitStateImpl>
      get copyWith => __$$AccountSettingsCubitStateImplCopyWithImpl<
          _$AccountSettingsCubitStateImpl>(this, _$identity);
}

abstract class _AccountSettingsCubitState implements AccountSettingsCubitState {
  const factory _AccountSettingsCubitState(
      {final AccountSettingsViewState currentViewState,
      final Password currentPassword,
      final Uint8List? selectedAvatar,
      final Failure? failure}) = _$AccountSettingsCubitStateImpl;

  @override
  AccountSettingsViewState get currentViewState;
  @override
  Password get currentPassword;
  @override
  Uint8List? get selectedAvatar;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AccountSettingsCubitStateImplCopyWith<_$AccountSettingsCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
