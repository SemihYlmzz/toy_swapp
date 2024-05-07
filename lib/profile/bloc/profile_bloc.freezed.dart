// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Toy> updatedOwnedToys) ownedToysUpdated,
    required TResult Function(bool startOver) fetchMoreOwnedToys,
    required TResult Function(int toyID) openToyToPublic,
    required TResult Function(int toyID) closeToyToPublic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult? Function(bool startOver)? fetchMoreOwnedToys,
    TResult? Function(int toyID)? openToyToPublic,
    TResult? Function(int toyID)? closeToyToPublic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult Function(bool startOver)? fetchMoreOwnedToys,
    TResult Function(int toyID)? openToyToPublic,
    TResult Function(int toyID)? closeToyToPublic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileOwnedToysUpdated value) ownedToysUpdated,
    required TResult Function(ProfileFetchMoreOwnedToys value)
        fetchMoreOwnedToys,
    required TResult Function(ProfileOpenToyToPublic value) openToyToPublic,
    required TResult Function(ProfileCloseToyToPublic value) closeToyToPublic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult? Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult? Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult? Function(ProfileCloseToyToPublic value)? closeToyToPublic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult Function(ProfileCloseToyToPublic value)? closeToyToPublic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileOwnedToysUpdatedImplCopyWith<$Res> {
  factory _$$ProfileOwnedToysUpdatedImplCopyWith(
          _$ProfileOwnedToysUpdatedImpl value,
          $Res Function(_$ProfileOwnedToysUpdatedImpl) then) =
      __$$ProfileOwnedToysUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Toy> updatedOwnedToys});
}

/// @nodoc
class __$$ProfileOwnedToysUpdatedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileOwnedToysUpdatedImpl>
    implements _$$ProfileOwnedToysUpdatedImplCopyWith<$Res> {
  __$$ProfileOwnedToysUpdatedImplCopyWithImpl(
      _$ProfileOwnedToysUpdatedImpl _value,
      $Res Function(_$ProfileOwnedToysUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedOwnedToys = null,
  }) {
    return _then(_$ProfileOwnedToysUpdatedImpl(
      null == updatedOwnedToys
          ? _value._updatedOwnedToys
          : updatedOwnedToys // ignore: cast_nullable_to_non_nullable
              as List<Toy>,
    ));
  }
}

/// @nodoc

class _$ProfileOwnedToysUpdatedImpl implements ProfileOwnedToysUpdated {
  const _$ProfileOwnedToysUpdatedImpl(final List<Toy> updatedOwnedToys)
      : _updatedOwnedToys = updatedOwnedToys;

  final List<Toy> _updatedOwnedToys;
  @override
  List<Toy> get updatedOwnedToys {
    if (_updatedOwnedToys is EqualUnmodifiableListView)
      return _updatedOwnedToys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updatedOwnedToys);
  }

  @override
  String toString() {
    return 'ProfileEvent.ownedToysUpdated(updatedOwnedToys: $updatedOwnedToys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileOwnedToysUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._updatedOwnedToys, _updatedOwnedToys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_updatedOwnedToys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileOwnedToysUpdatedImplCopyWith<_$ProfileOwnedToysUpdatedImpl>
      get copyWith => __$$ProfileOwnedToysUpdatedImplCopyWithImpl<
          _$ProfileOwnedToysUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Toy> updatedOwnedToys) ownedToysUpdated,
    required TResult Function(bool startOver) fetchMoreOwnedToys,
    required TResult Function(int toyID) openToyToPublic,
    required TResult Function(int toyID) closeToyToPublic,
  }) {
    return ownedToysUpdated(updatedOwnedToys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult? Function(bool startOver)? fetchMoreOwnedToys,
    TResult? Function(int toyID)? openToyToPublic,
    TResult? Function(int toyID)? closeToyToPublic,
  }) {
    return ownedToysUpdated?.call(updatedOwnedToys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult Function(bool startOver)? fetchMoreOwnedToys,
    TResult Function(int toyID)? openToyToPublic,
    TResult Function(int toyID)? closeToyToPublic,
    required TResult orElse(),
  }) {
    if (ownedToysUpdated != null) {
      return ownedToysUpdated(updatedOwnedToys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileOwnedToysUpdated value) ownedToysUpdated,
    required TResult Function(ProfileFetchMoreOwnedToys value)
        fetchMoreOwnedToys,
    required TResult Function(ProfileOpenToyToPublic value) openToyToPublic,
    required TResult Function(ProfileCloseToyToPublic value) closeToyToPublic,
  }) {
    return ownedToysUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult? Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult? Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult? Function(ProfileCloseToyToPublic value)? closeToyToPublic,
  }) {
    return ownedToysUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult Function(ProfileCloseToyToPublic value)? closeToyToPublic,
    required TResult orElse(),
  }) {
    if (ownedToysUpdated != null) {
      return ownedToysUpdated(this);
    }
    return orElse();
  }
}

abstract class ProfileOwnedToysUpdated implements ProfileEvent {
  const factory ProfileOwnedToysUpdated(final List<Toy> updatedOwnedToys) =
      _$ProfileOwnedToysUpdatedImpl;

  List<Toy> get updatedOwnedToys;
  @JsonKey(ignore: true)
  _$$ProfileOwnedToysUpdatedImplCopyWith<_$ProfileOwnedToysUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileFetchMoreOwnedToysImplCopyWith<$Res> {
  factory _$$ProfileFetchMoreOwnedToysImplCopyWith(
          _$ProfileFetchMoreOwnedToysImpl value,
          $Res Function(_$ProfileFetchMoreOwnedToysImpl) then) =
      __$$ProfileFetchMoreOwnedToysImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool startOver});
}

/// @nodoc
class __$$ProfileFetchMoreOwnedToysImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileFetchMoreOwnedToysImpl>
    implements _$$ProfileFetchMoreOwnedToysImplCopyWith<$Res> {
  __$$ProfileFetchMoreOwnedToysImplCopyWithImpl(
      _$ProfileFetchMoreOwnedToysImpl _value,
      $Res Function(_$ProfileFetchMoreOwnedToysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startOver = null,
  }) {
    return _then(_$ProfileFetchMoreOwnedToysImpl(
      startOver: null == startOver
          ? _value.startOver
          : startOver // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileFetchMoreOwnedToysImpl implements ProfileFetchMoreOwnedToys {
  const _$ProfileFetchMoreOwnedToysImpl({this.startOver = false});

  @override
  @JsonKey()
  final bool startOver;

  @override
  String toString() {
    return 'ProfileEvent.fetchMoreOwnedToys(startOver: $startOver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFetchMoreOwnedToysImpl &&
            (identical(other.startOver, startOver) ||
                other.startOver == startOver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startOver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFetchMoreOwnedToysImplCopyWith<_$ProfileFetchMoreOwnedToysImpl>
      get copyWith => __$$ProfileFetchMoreOwnedToysImplCopyWithImpl<
          _$ProfileFetchMoreOwnedToysImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Toy> updatedOwnedToys) ownedToysUpdated,
    required TResult Function(bool startOver) fetchMoreOwnedToys,
    required TResult Function(int toyID) openToyToPublic,
    required TResult Function(int toyID) closeToyToPublic,
  }) {
    return fetchMoreOwnedToys(startOver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult? Function(bool startOver)? fetchMoreOwnedToys,
    TResult? Function(int toyID)? openToyToPublic,
    TResult? Function(int toyID)? closeToyToPublic,
  }) {
    return fetchMoreOwnedToys?.call(startOver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult Function(bool startOver)? fetchMoreOwnedToys,
    TResult Function(int toyID)? openToyToPublic,
    TResult Function(int toyID)? closeToyToPublic,
    required TResult orElse(),
  }) {
    if (fetchMoreOwnedToys != null) {
      return fetchMoreOwnedToys(startOver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileOwnedToysUpdated value) ownedToysUpdated,
    required TResult Function(ProfileFetchMoreOwnedToys value)
        fetchMoreOwnedToys,
    required TResult Function(ProfileOpenToyToPublic value) openToyToPublic,
    required TResult Function(ProfileCloseToyToPublic value) closeToyToPublic,
  }) {
    return fetchMoreOwnedToys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult? Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult? Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult? Function(ProfileCloseToyToPublic value)? closeToyToPublic,
  }) {
    return fetchMoreOwnedToys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult Function(ProfileCloseToyToPublic value)? closeToyToPublic,
    required TResult orElse(),
  }) {
    if (fetchMoreOwnedToys != null) {
      return fetchMoreOwnedToys(this);
    }
    return orElse();
  }
}

abstract class ProfileFetchMoreOwnedToys implements ProfileEvent {
  const factory ProfileFetchMoreOwnedToys({final bool startOver}) =
      _$ProfileFetchMoreOwnedToysImpl;

  bool get startOver;
  @JsonKey(ignore: true)
  _$$ProfileFetchMoreOwnedToysImplCopyWith<_$ProfileFetchMoreOwnedToysImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileOpenToyToPublicImplCopyWith<$Res> {
  factory _$$ProfileOpenToyToPublicImplCopyWith(
          _$ProfileOpenToyToPublicImpl value,
          $Res Function(_$ProfileOpenToyToPublicImpl) then) =
      __$$ProfileOpenToyToPublicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int toyID});
}

/// @nodoc
class __$$ProfileOpenToyToPublicImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileOpenToyToPublicImpl>
    implements _$$ProfileOpenToyToPublicImplCopyWith<$Res> {
  __$$ProfileOpenToyToPublicImplCopyWithImpl(
      _$ProfileOpenToyToPublicImpl _value,
      $Res Function(_$ProfileOpenToyToPublicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toyID = null,
  }) {
    return _then(_$ProfileOpenToyToPublicImpl(
      toyID: null == toyID
          ? _value.toyID
          : toyID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProfileOpenToyToPublicImpl implements ProfileOpenToyToPublic {
  const _$ProfileOpenToyToPublicImpl({required this.toyID});

  @override
  final int toyID;

  @override
  String toString() {
    return 'ProfileEvent.openToyToPublic(toyID: $toyID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileOpenToyToPublicImpl &&
            (identical(other.toyID, toyID) || other.toyID == toyID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toyID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileOpenToyToPublicImplCopyWith<_$ProfileOpenToyToPublicImpl>
      get copyWith => __$$ProfileOpenToyToPublicImplCopyWithImpl<
          _$ProfileOpenToyToPublicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Toy> updatedOwnedToys) ownedToysUpdated,
    required TResult Function(bool startOver) fetchMoreOwnedToys,
    required TResult Function(int toyID) openToyToPublic,
    required TResult Function(int toyID) closeToyToPublic,
  }) {
    return openToyToPublic(toyID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult? Function(bool startOver)? fetchMoreOwnedToys,
    TResult? Function(int toyID)? openToyToPublic,
    TResult? Function(int toyID)? closeToyToPublic,
  }) {
    return openToyToPublic?.call(toyID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult Function(bool startOver)? fetchMoreOwnedToys,
    TResult Function(int toyID)? openToyToPublic,
    TResult Function(int toyID)? closeToyToPublic,
    required TResult orElse(),
  }) {
    if (openToyToPublic != null) {
      return openToyToPublic(toyID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileOwnedToysUpdated value) ownedToysUpdated,
    required TResult Function(ProfileFetchMoreOwnedToys value)
        fetchMoreOwnedToys,
    required TResult Function(ProfileOpenToyToPublic value) openToyToPublic,
    required TResult Function(ProfileCloseToyToPublic value) closeToyToPublic,
  }) {
    return openToyToPublic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult? Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult? Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult? Function(ProfileCloseToyToPublic value)? closeToyToPublic,
  }) {
    return openToyToPublic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult Function(ProfileCloseToyToPublic value)? closeToyToPublic,
    required TResult orElse(),
  }) {
    if (openToyToPublic != null) {
      return openToyToPublic(this);
    }
    return orElse();
  }
}

abstract class ProfileOpenToyToPublic implements ProfileEvent {
  const factory ProfileOpenToyToPublic({required final int toyID}) =
      _$ProfileOpenToyToPublicImpl;

  int get toyID;
  @JsonKey(ignore: true)
  _$$ProfileOpenToyToPublicImplCopyWith<_$ProfileOpenToyToPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileCloseToyToPublicImplCopyWith<$Res> {
  factory _$$ProfileCloseToyToPublicImplCopyWith(
          _$ProfileCloseToyToPublicImpl value,
          $Res Function(_$ProfileCloseToyToPublicImpl) then) =
      __$$ProfileCloseToyToPublicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int toyID});
}

/// @nodoc
class __$$ProfileCloseToyToPublicImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileCloseToyToPublicImpl>
    implements _$$ProfileCloseToyToPublicImplCopyWith<$Res> {
  __$$ProfileCloseToyToPublicImplCopyWithImpl(
      _$ProfileCloseToyToPublicImpl _value,
      $Res Function(_$ProfileCloseToyToPublicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toyID = null,
  }) {
    return _then(_$ProfileCloseToyToPublicImpl(
      toyID: null == toyID
          ? _value.toyID
          : toyID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProfileCloseToyToPublicImpl implements ProfileCloseToyToPublic {
  const _$ProfileCloseToyToPublicImpl({required this.toyID});

  @override
  final int toyID;

  @override
  String toString() {
    return 'ProfileEvent.closeToyToPublic(toyID: $toyID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileCloseToyToPublicImpl &&
            (identical(other.toyID, toyID) || other.toyID == toyID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toyID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileCloseToyToPublicImplCopyWith<_$ProfileCloseToyToPublicImpl>
      get copyWith => __$$ProfileCloseToyToPublicImplCopyWithImpl<
          _$ProfileCloseToyToPublicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Toy> updatedOwnedToys) ownedToysUpdated,
    required TResult Function(bool startOver) fetchMoreOwnedToys,
    required TResult Function(int toyID) openToyToPublic,
    required TResult Function(int toyID) closeToyToPublic,
  }) {
    return closeToyToPublic(toyID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult? Function(bool startOver)? fetchMoreOwnedToys,
    TResult? Function(int toyID)? openToyToPublic,
    TResult? Function(int toyID)? closeToyToPublic,
  }) {
    return closeToyToPublic?.call(toyID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Toy> updatedOwnedToys)? ownedToysUpdated,
    TResult Function(bool startOver)? fetchMoreOwnedToys,
    TResult Function(int toyID)? openToyToPublic,
    TResult Function(int toyID)? closeToyToPublic,
    required TResult orElse(),
  }) {
    if (closeToyToPublic != null) {
      return closeToyToPublic(toyID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileOwnedToysUpdated value) ownedToysUpdated,
    required TResult Function(ProfileFetchMoreOwnedToys value)
        fetchMoreOwnedToys,
    required TResult Function(ProfileOpenToyToPublic value) openToyToPublic,
    required TResult Function(ProfileCloseToyToPublic value) closeToyToPublic,
  }) {
    return closeToyToPublic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult? Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult? Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult? Function(ProfileCloseToyToPublic value)? closeToyToPublic,
  }) {
    return closeToyToPublic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileOwnedToysUpdated value)? ownedToysUpdated,
    TResult Function(ProfileFetchMoreOwnedToys value)? fetchMoreOwnedToys,
    TResult Function(ProfileOpenToyToPublic value)? openToyToPublic,
    TResult Function(ProfileCloseToyToPublic value)? closeToyToPublic,
    required TResult orElse(),
  }) {
    if (closeToyToPublic != null) {
      return closeToyToPublic(this);
    }
    return orElse();
  }
}

abstract class ProfileCloseToyToPublic implements ProfileEvent {
  const factory ProfileCloseToyToPublic({required final int toyID}) =
      _$ProfileCloseToyToPublicImpl;

  int get toyID;
  @JsonKey(ignore: true)
  _$$ProfileCloseToyToPublicImplCopyWith<_$ProfileCloseToyToPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  int get currentConsumerID => throw _privateConstructorUsedError;
  List<Toy>? get ownedToys => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isInitializing => throw _privateConstructorUsedError;
  Failure? get fetchMoreFailure => throw _privateConstructorUsedError;
  Failure? get fetchLatestToysFailure => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {int currentConsumerID,
      List<Toy>? ownedToys,
      bool hasReachedMax,
      bool isLoading,
      bool isInitializing,
      Failure? fetchMoreFailure,
      Failure? fetchLatestToysFailure,
      Failure? failure});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConsumerID = null,
    Object? ownedToys = freezed,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? isInitializing = null,
    Object? fetchMoreFailure = freezed,
    Object? fetchLatestToysFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentConsumerID: null == currentConsumerID
          ? _value.currentConsumerID
          : currentConsumerID // ignore: cast_nullable_to_non_nullable
              as int,
      ownedToys: freezed == ownedToys
          ? _value.ownedToys
          : ownedToys // ignore: cast_nullable_to_non_nullable
              as List<Toy>?,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoreFailure: freezed == fetchMoreFailure
          ? _value.fetchMoreFailure
          : fetchMoreFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      fetchLatestToysFailure: freezed == fetchLatestToysFailure
          ? _value.fetchLatestToysFailure
          : fetchLatestToysFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentConsumerID,
      List<Toy>? ownedToys,
      bool hasReachedMax,
      bool isLoading,
      bool isInitializing,
      Failure? fetchMoreFailure,
      Failure? fetchLatestToysFailure,
      Failure? failure});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConsumerID = null,
    Object? ownedToys = freezed,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? isInitializing = null,
    Object? fetchMoreFailure = freezed,
    Object? fetchLatestToysFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      currentConsumerID: null == currentConsumerID
          ? _value.currentConsumerID
          : currentConsumerID // ignore: cast_nullable_to_non_nullable
              as int,
      ownedToys: freezed == ownedToys
          ? _value._ownedToys
          : ownedToys // ignore: cast_nullable_to_non_nullable
              as List<Toy>?,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoreFailure: freezed == fetchMoreFailure
          ? _value.fetchMoreFailure
          : fetchMoreFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      fetchLatestToysFailure: freezed == fetchLatestToysFailure
          ? _value.fetchLatestToysFailure
          : fetchLatestToysFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {required this.currentConsumerID,
      required final List<Toy>? ownedToys,
      this.hasReachedMax = false,
      this.isLoading = false,
      this.isInitializing = false,
      this.fetchMoreFailure,
      this.fetchLatestToysFailure,
      this.failure})
      : _ownedToys = ownedToys;

  @override
  final int currentConsumerID;
  final List<Toy>? _ownedToys;
  @override
  List<Toy>? get ownedToys {
    final value = _ownedToys;
    if (value == null) return null;
    if (_ownedToys is EqualUnmodifiableListView) return _ownedToys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isInitializing;
  @override
  final Failure? fetchMoreFailure;
  @override
  final Failure? fetchLatestToysFailure;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ProfileState(currentConsumerID: $currentConsumerID, ownedToys: $ownedToys, hasReachedMax: $hasReachedMax, isLoading: $isLoading, isInitializing: $isInitializing, fetchMoreFailure: $fetchMoreFailure, fetchLatestToysFailure: $fetchLatestToysFailure, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.currentConsumerID, currentConsumerID) ||
                other.currentConsumerID == currentConsumerID) &&
            const DeepCollectionEquality()
                .equals(other._ownedToys, _ownedToys) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isInitializing, isInitializing) ||
                other.isInitializing == isInitializing) &&
            (identical(other.fetchMoreFailure, fetchMoreFailure) ||
                other.fetchMoreFailure == fetchMoreFailure) &&
            (identical(other.fetchLatestToysFailure, fetchLatestToysFailure) ||
                other.fetchLatestToysFailure == fetchLatestToysFailure) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentConsumerID,
      const DeepCollectionEquality().hash(_ownedToys),
      hasReachedMax,
      isLoading,
      isInitializing,
      fetchMoreFailure,
      fetchLatestToysFailure,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final int currentConsumerID,
      required final List<Toy>? ownedToys,
      final bool hasReachedMax,
      final bool isLoading,
      final bool isInitializing,
      final Failure? fetchMoreFailure,
      final Failure? fetchLatestToysFailure,
      final Failure? failure}) = _$ProfileStateImpl;

  @override
  int get currentConsumerID;
  @override
  List<Toy>? get ownedToys;
  @override
  bool get hasReachedMax;
  @override
  bool get isLoading;
  @override
  bool get isInitializing;
  @override
  Failure? get fetchMoreFailure;
  @override
  Failure? get fetchLatestToysFailure;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
