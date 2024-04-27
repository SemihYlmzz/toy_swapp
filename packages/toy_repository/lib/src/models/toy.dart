import '../../toy_repository.dart';

class Toy {
  const Toy({
    required this.ownerAuthId,
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrlList,
    required this.details,
    required this.createdAt,
    required this.isPublic,
    required this.isPublicable,
    required this.likersConsumerIds,
  });

  Toy.fromJson(Map<String, dynamic> json)
      : ownerAuthId = json['ownerAuthId'] as String,
        id = json['id'] as String,
        name = json['name'] as String,
        description = json['description'] as String,
        imageUrlList = (json['imageUrlList'] as List)
            .map((e) => ToyImageUrls.fromJson(e as Map<String, dynamic>))
            .toList(),
        details = ToyDetails.fromJson(json['details'] as Map<String, dynamic>),
        createdAt =
            DateTime.fromMillisecondsSinceEpoch(json['createdAt'] as int),
        isPublic = json['isPublic'] as bool,
        isPublicable = json['isPublicable'] as bool,
        likersConsumerIds = (json['likersConsumerIds'] as List)
            .map((e) => e as String)
            .toList();

  final String ownerAuthId;
  final String id;
  final String name;
  final String description;
  final List<ToyImageUrls> imageUrlList;
  final ToyDetails details;
  final DateTime createdAt;
  final bool isPublic;
  final bool isPublicable;
  final List<String> likersConsumerIds;

  Map<String, dynamic> toJson() => {
        'ownerAuthId': ownerAuthId,
        'id': id,
        'name': name,
        'description': description,
        'imageUrlList': imageUrlList.map((e) => e.toJson()).toList(),
        'details': details.toJson(),
        'createdAt': createdAt.millisecondsSinceEpoch,
        'isPublic': isPublic,
        'isPublicable': isPublicable,
        'likersConsumerIds': likersConsumerIds,
      };
}
