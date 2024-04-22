import '../../toy_repository.dart';

class Toy {
  const Toy({
    required this.ownerAuthId,
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrlList,
    required this.details,
  });

  Toy.fromJson(Map<String, dynamic> json)
      : ownerAuthId = json['url1024'] as String,
        id = json['url512'] as String,
        name = json['url256'] as String,
        description = json['url128'] as String,
        imageUrlList = (json['imageUrlList'] as List)
            .map((e) => ToyImageUrls.fromJson(e as Map<String, dynamic>))
            .toList(),
        details = ToyDetails.fromJson(json['details'] as Map<String, dynamic>);

  final String ownerAuthId;
  final String id;
  final String name;
  final String description;
  final List<ToyImageUrls> imageUrlList;
  final ToyDetails details;

  Map<String, dynamic> toJson() => {
        'ownerAuthId': ownerAuthId,
        'id': id,
        'name': name,
        'description': description,
        'imageUrlList': imageUrlList.map((e) => e.toJson()).toList(),
        'details': details.toJson(),
      };
}
