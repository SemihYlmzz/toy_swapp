import 'package:cloud_storage/cloud_storage.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

class Apis {
  const Apis({
    required this.client,
    required this.cloudStorage,
  });
  final Client client;
  final CloudStorage cloudStorage;
}
