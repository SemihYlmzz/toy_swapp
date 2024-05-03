// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Toy _$ToyFromJson(Map<String, dynamic> json) {
  return _Toy.fromJson(json);
}

/// @nodoc
mixin _$Toy {
  String get ownerAuthId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ToyImageUrls> get imageUrlList => throw _privateConstructorUsedError;
  ToyDetails get details => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  List<String> get likersConsumerIds => throw _privateConstructorUsedError;
  String? get safeToPublicMarkerSupportId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToyCopyWith<Toy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToyCopyWith<$Res> {
  factory $ToyCopyWith(Toy value, $Res Function(Toy) then) =
      _$ToyCopyWithImpl<$Res, Toy>;
  @useResult
  $Res call(
      {String ownerAuthId,
      String id,
      String name,
      String description,
      List<ToyImageUrls> imageUrlList,
      ToyDetails details,
      DateTime createdAt,
      bool isPublic,
      bool isLocked,
      List<String> likersConsumerIds,
      String? safeToPublicMarkerSupportId});

  $ToyDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$ToyCopyWithImpl<$Res, $Val extends Toy> implements $ToyCopyWith<$Res> {
  _$ToyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAuthId = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrlList = null,
    Object? details = null,
    Object? createdAt = null,
    Object? isPublic = null,
    Object? isLocked = null,
    Object? likersConsumerIds = null,
    Object? safeToPublicMarkerSupportId = freezed,
  }) {
    return _then(_value.copyWith(
      ownerAuthId: null == ownerAuthId
          ? _value.ownerAuthId
          : ownerAuthId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrlList: null == imageUrlList
          ? _value.imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as List<ToyImageUrls>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ToyDetails,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      likersConsumerIds: null == likersConsumerIds
          ? _value.likersConsumerIds
          : likersConsumerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      safeToPublicMarkerSupportId: freezed == safeToPublicMarkerSupportId
          ? _value.safeToPublicMarkerSupportId
          : safeToPublicMarkerSupportId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToyDetailsCopyWith<$Res> get details {
    return $ToyDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToyImplCopyWith<$Res> implements $ToyCopyWith<$Res> {
  factory _$$ToyImplCopyWith(_$ToyImpl value, $Res Function(_$ToyImpl) then) =
      __$$ToyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ownerAuthId,
      String id,
      String name,
      String description,
      List<ToyImageUrls> imageUrlList,
      ToyDetails details,
      DateTime createdAt,
      bool isPublic,
      bool isLocked,
      List<String> likersConsumerIds,
      String? safeToPublicMarkerSupportId});

  @override
  $ToyDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$ToyImplCopyWithImpl<$Res> extends _$ToyCopyWithImpl<$Res, _$ToyImpl>
    implements _$$ToyImplCopyWith<$Res> {
  __$$ToyImplCopyWithImpl(_$ToyImpl _value, $Res Function(_$ToyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAuthId = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrlList = null,
    Object? details = null,
    Object? createdAt = null,
    Object? isPublic = null,
    Object? isLocked = null,
    Object? likersConsumerIds = null,
    Object? safeToPublicMarkerSupportId = freezed,
  }) {
    return _then(_$ToyImpl(
      ownerAuthId: null == ownerAuthId
          ? _value.ownerAuthId
          : ownerAuthId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrlList: null == imageUrlList
          ? _value._imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as List<ToyImageUrls>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ToyDetails,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      likersConsumerIds: null == likersConsumerIds
          ? _value._likersConsumerIds
          : likersConsumerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      safeToPublicMarkerSupportId: freezed == safeToPublicMarkerSupportId
          ? _value.safeToPublicMarkerSupportId
          : safeToPublicMarkerSupportId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToyImpl with DiagnosticableTreeMixin implements _Toy {
  const _$ToyImpl(
      {required this.ownerAuthId,
      required this.id,
      required this.name,
      required this.description,
      required final List<ToyImageUrls> imageUrlList,
      required this.details,
      required this.createdAt,
      required this.isPublic,
      required this.isLocked,
      required final List<String> likersConsumerIds,
      required this.safeToPublicMarkerSupportId})
      : _imageUrlList = imageUrlList,
        _likersConsumerIds = likersConsumerIds;

  factory _$ToyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToyImplFromJson(json);

  @override
  final String ownerAuthId;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<ToyImageUrls> _imageUrlList;
  @override
  List<ToyImageUrls> get imageUrlList {
    if (_imageUrlList is EqualUnmodifiableListView) return _imageUrlList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrlList);
  }

  @override
  final ToyDetails details;
  @override
  final DateTime createdAt;
  @override
  final bool isPublic;
  @override
  final bool isLocked;
  final List<String> _likersConsumerIds;
  @override
  List<String> get likersConsumerIds {
    if (_likersConsumerIds is EqualUnmodifiableListView)
      return _likersConsumerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likersConsumerIds);
  }

  @override
  final String? safeToPublicMarkerSupportId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Toy(ownerAuthId: $ownerAuthId, id: $id, name: $name, description: $description, imageUrlList: $imageUrlList, details: $details, createdAt: $createdAt, isPublic: $isPublic, isLocked: $isLocked, likersConsumerIds: $likersConsumerIds, safeToPublicMarkerSupportId: $safeToPublicMarkerSupportId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Toy'))
      ..add(DiagnosticsProperty('ownerAuthId', ownerAuthId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('imageUrlList', imageUrlList))
      ..add(DiagnosticsProperty('details', details))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('isPublic', isPublic))
      ..add(DiagnosticsProperty('isLocked', isLocked))
      ..add(DiagnosticsProperty('likersConsumerIds', likersConsumerIds))
      ..add(DiagnosticsProperty(
          'safeToPublicMarkerSupportId', safeToPublicMarkerSupportId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyImpl &&
            (identical(other.ownerAuthId, ownerAuthId) ||
                other.ownerAuthId == ownerAuthId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._imageUrlList, _imageUrlList) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            const DeepCollectionEquality()
                .equals(other._likersConsumerIds, _likersConsumerIds) &&
            (identical(other.safeToPublicMarkerSupportId,
                    safeToPublicMarkerSupportId) ||
                other.safeToPublicMarkerSupportId ==
                    safeToPublicMarkerSupportId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ownerAuthId,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_imageUrlList),
      details,
      createdAt,
      isPublic,
      isLocked,
      const DeepCollectionEquality().hash(_likersConsumerIds),
      safeToPublicMarkerSupportId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyImplCopyWith<_$ToyImpl> get copyWith =>
      __$$ToyImplCopyWithImpl<_$ToyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToyImplToJson(
      this,
    );
  }
}

abstract class _Toy implements Toy {
  const factory _Toy(
      {required final String ownerAuthId,
      required final String id,
      required final String name,
      required final String description,
      required final List<ToyImageUrls> imageUrlList,
      required final ToyDetails details,
      required final DateTime createdAt,
      required final bool isPublic,
      required final bool isLocked,
      required final List<String> likersConsumerIds,
      required final String? safeToPublicMarkerSupportId}) = _$ToyImpl;

  factory _Toy.fromJson(Map<String, dynamic> json) = _$ToyImpl.fromJson;

  @override
  String get ownerAuthId;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<ToyImageUrls> get imageUrlList;
  @override
  ToyDetails get details;
  @override
  DateTime get createdAt;
  @override
  bool get isPublic;
  @override
  bool get isLocked;
  @override
  List<String> get likersConsumerIds;
  @override
  String? get safeToPublicMarkerSupportId;
  @override
  @JsonKey(ignore: true)
  _$$ToyImplCopyWith<_$ToyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
