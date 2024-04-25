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
            DateTime.fromMillisecondsSinceEpoch(json['createdAt'] as int);

  final String ownerAuthId;
  final String id;
  final String name;
  final String description;
  final List<ToyImageUrls> imageUrlList;
  final ToyDetails details;
  final DateTime createdAt;

  Map<String, dynamic> toJson() => {
        'ownerAuthId': ownerAuthId,
        'id': id,
        'name': name,
        'description': description,
        'imageUrlList': imageUrlList.map((e) => e.toJson()).toList(),
        'details': details.toJson(),
        'createdAt': createdAt.millisecondsSinceEpoch,
      };
}
