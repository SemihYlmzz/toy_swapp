import 'package:consumer_repository/consumer_repository.dart';
import 'package:toy_repository/toy_repository.dart';

class ToyAndOwnerConsumer {
  const ToyAndOwnerConsumer({
    required this.toy,
    required this.ownerConsumer,
  });
  final Toy toy;
  final Consumer ownerConsumer;
}
