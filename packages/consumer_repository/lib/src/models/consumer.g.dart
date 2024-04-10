// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsumerImpl _$$ConsumerImplFromJson(Map<String, dynamic> json) =>
    _$ConsumerImpl(
      authId: json['authId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      currentLocation: CurrentLocation.fromJson(
          json['currentLocation'] as Map<String, dynamic>),
      avatarUrls:
          AvatarUrls.fromJson(json['avatarUrls'] as Map<String, dynamic>),
      counters: Counters.fromJson(json['counters'] as Map<String, dynamic>),
      isDeletingAccount: json['isDeletingAccount'] as bool,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$ConsumerImplToJson(_$ConsumerImpl instance) =>
    <String, dynamic>{
      'authId': instance.authId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'currentLocation': instance.currentLocation.toJson(),
      'avatarUrls': instance.avatarUrls.toJson(),
      'counters': instance.counters.toJson(),
      'isDeletingAccount': instance.isDeletingAccount,
      'email': instance.email,
    };
