/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Toy implements _i1.SerializableModel {
  Toy._({
    this.id,
    required this.ownerConsumerID,
    required this.name,
    required this.description,
    this.declineReason,
    required this.imageUrlList,
    required this.age,
    required this.gender,
    required this.condition,
    required this.createdAt,
    required this.isPublic,
    required this.isLocked,
    this.likes,
    required this.likeCount,
    this.acceptDeciderSupportID,
    this.isAccepted,
  });

  factory Toy({
    int? id,
    required int ownerConsumerID,
    required String name,
    required String description,
    String? declineReason,
    required List<_i2.ToyImageUrls> imageUrlList,
    required _i2.ToyAge age,
    required _i2.ToyGender gender,
    required _i2.ToyCondition condition,
    required DateTime createdAt,
    required bool isPublic,
    required bool isLocked,
    List<_i2.Like>? likes,
    required int likeCount,
    int? acceptDeciderSupportID,
    bool? isAccepted,
  }) = _ToyImpl;

  factory Toy.fromJson(Map<String, dynamic> jsonSerialization) {
    return Toy(
      id: jsonSerialization['id'] as int?,
      ownerConsumerID: jsonSerialization['ownerConsumerID'] as int,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      declineReason: jsonSerialization['declineReason'] as String?,
      imageUrlList: (jsonSerialization['imageUrlList'] as List)
          .map((e) => _i2.ToyImageUrls.fromJson((e as Map<String, dynamic>)))
          .toList(),
      age: _i2.ToyAge.fromJson((jsonSerialization['age'] as int)),
      gender: _i2.ToyGender.fromJson((jsonSerialization['gender'] as int)),
      condition:
          _i2.ToyCondition.fromJson((jsonSerialization['condition'] as int)),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      isPublic: jsonSerialization['isPublic'] as bool,
      isLocked: jsonSerialization['isLocked'] as bool,
      likes: (jsonSerialization['likes'] as List?)
          ?.map((e) => _i2.Like.fromJson((e as Map<String, dynamic>)))
          .toList(),
      likeCount: jsonSerialization['likeCount'] as int,
      acceptDeciderSupportID:
          jsonSerialization['acceptDeciderSupportID'] as int?,
      isAccepted: jsonSerialization['isAccepted'] as bool?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int ownerConsumerID;

  String name;

  String description;

  String? declineReason;

  List<_i2.ToyImageUrls> imageUrlList;

  _i2.ToyAge age;

  _i2.ToyGender gender;

  _i2.ToyCondition condition;

  DateTime createdAt;

  bool isPublic;

  bool isLocked;

  List<_i2.Like>? likes;

  int likeCount;

  int? acceptDeciderSupportID;

  bool? isAccepted;

  Toy copyWith({
    int? id,
    int? ownerConsumerID,
    String? name,
    String? description,
    String? declineReason,
    List<_i2.ToyImageUrls>? imageUrlList,
    _i2.ToyAge? age,
    _i2.ToyGender? gender,
    _i2.ToyCondition? condition,
    DateTime? createdAt,
    bool? isPublic,
    bool? isLocked,
    List<_i2.Like>? likes,
    int? likeCount,
    int? acceptDeciderSupportID,
    bool? isAccepted,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ownerConsumerID': ownerConsumerID,
      'name': name,
      'description': description,
      if (declineReason != null) 'declineReason': declineReason,
      'imageUrlList': imageUrlList.toJson(valueToJson: (v) => v.toJson()),
      'age': age.toJson(),
      'gender': gender.toJson(),
      'condition': condition.toJson(),
      'createdAt': createdAt.toJson(),
      'isPublic': isPublic,
      'isLocked': isLocked,
      if (likes != null) 'likes': likes?.toJson(valueToJson: (v) => v.toJson()),
      'likeCount': likeCount,
      if (acceptDeciderSupportID != null)
        'acceptDeciderSupportID': acceptDeciderSupportID,
      if (isAccepted != null) 'isAccepted': isAccepted,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ToyImpl extends Toy {
  _ToyImpl({
    int? id,
    required int ownerConsumerID,
    required String name,
    required String description,
    String? declineReason,
    required List<_i2.ToyImageUrls> imageUrlList,
    required _i2.ToyAge age,
    required _i2.ToyGender gender,
    required _i2.ToyCondition condition,
    required DateTime createdAt,
    required bool isPublic,
    required bool isLocked,
    List<_i2.Like>? likes,
    required int likeCount,
    int? acceptDeciderSupportID,
    bool? isAccepted,
  }) : super._(
          id: id,
          ownerConsumerID: ownerConsumerID,
          name: name,
          description: description,
          declineReason: declineReason,
          imageUrlList: imageUrlList,
          age: age,
          gender: gender,
          condition: condition,
          createdAt: createdAt,
          isPublic: isPublic,
          isLocked: isLocked,
          likes: likes,
          likeCount: likeCount,
          acceptDeciderSupportID: acceptDeciderSupportID,
          isAccepted: isAccepted,
        );

  @override
  Toy copyWith({
    Object? id = _Undefined,
    int? ownerConsumerID,
    String? name,
    String? description,
    Object? declineReason = _Undefined,
    List<_i2.ToyImageUrls>? imageUrlList,
    _i2.ToyAge? age,
    _i2.ToyGender? gender,
    _i2.ToyCondition? condition,
    DateTime? createdAt,
    bool? isPublic,
    bool? isLocked,
    Object? likes = _Undefined,
    int? likeCount,
    Object? acceptDeciderSupportID = _Undefined,
    Object? isAccepted = _Undefined,
  }) {
    return Toy(
      id: id is int? ? id : this.id,
      ownerConsumerID: ownerConsumerID ?? this.ownerConsumerID,
      name: name ?? this.name,
      description: description ?? this.description,
      declineReason:
          declineReason is String? ? declineReason : this.declineReason,
      imageUrlList: imageUrlList ?? this.imageUrlList.clone(),
      age: age ?? this.age,
      gender: gender ?? this.gender,
      condition: condition ?? this.condition,
      createdAt: createdAt ?? this.createdAt,
      isPublic: isPublic ?? this.isPublic,
      isLocked: isLocked ?? this.isLocked,
      likes: likes is List<_i2.Like>? ? likes : this.likes?.clone(),
      likeCount: likeCount ?? this.likeCount,
      acceptDeciderSupportID: acceptDeciderSupportID is int?
          ? acceptDeciderSupportID
          : this.acceptDeciderSupportID,
      isAccepted: isAccepted is bool? ? isAccepted : this.isAccepted,
    );
  }
}
