import 'package:toy_swapp_client/toy_swapp_client.dart';

class LikeableToyAndOwner {
  const LikeableToyAndOwner({
    required this.toy,
    required this.ownerConsumer,
    required this.isLiked,
  });
  final Toy toy;
  final Consumer ownerConsumer;
  final bool isLiked;

  LikeableToyAndOwner copyWith({
    Toy? toy,
    Consumer? ownerConsumer,
    bool? isLiked,
  }) {
    return LikeableToyAndOwner(
      toy: toy ?? this.toy,
      ownerConsumer: ownerConsumer ?? this.ownerConsumer,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}
