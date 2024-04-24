import 'package:cloud_storage/cloud_storage.dart';
import 'package:remote_database/remote_database.dart';

class Apis {
  const Apis({
    required this.remoteDatabase,
    required this.cloudStorage,
  });
  final RemoteDatabase remoteDatabase;
  final CloudStorage cloudStorage;
}
