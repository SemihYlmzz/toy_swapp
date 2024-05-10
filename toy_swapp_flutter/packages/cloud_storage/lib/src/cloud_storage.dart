import 'dart:typed_data';

abstract class CloudStorage {
  const CloudStorage();

  Future<String> uploadImageGetUrl({
    required String path,
    required Uint8List image,
  });
}
