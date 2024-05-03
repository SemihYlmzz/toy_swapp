// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToyImpl _$$ToyImplFromJson(Map json) => _$ToyImpl(
      ownerAuthId: json['ownerAuthId'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrlList: (json['imageUrlList'] as List<dynamic>)
          .map(
              (e) => ToyImageUrls.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      details: ToyDetails.fromJson(
          Map<String, Object?>.from(json['details'] as Map)),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isPublic: json['isPublic'] as bool,
      isLocked: json['isLocked'] as bool,
      likersConsumerIds: (json['likersConsumerIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      safeToPublicMarkerSupportId:
          json['safeToPublicMarkerSupportId'] as String?,
    );

Map<String, dynamic> _$$ToyImplToJson(_$ToyImpl instance) => <String, dynamic>{
      'ownerAuthId': instance.ownerAuthId,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrlList': instance.imageUrlList.map((e) => e.toJson()).toList(),
      'details': instance.details.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'isPublic': instance.isPublic,
      'isLocked': instance.isLocked,
      'likersConsumerIds': instance.likersConsumerIds,
      'safeToPublicMarkerSupportId': instance.safeToPublicMarkerSupportId,
    };
