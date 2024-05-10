sealed class DeviceMetadataRepositoryException implements Exception {
  const DeviceMetadataRepositoryException();
}

class DeviceMetadataRepositoryUnknown
    extends DeviceMetadataRepositoryException {}
