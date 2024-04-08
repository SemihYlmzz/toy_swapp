sealed class AppMetadataRepositoryException implements Exception {
  const AppMetadataRepositoryException();
}

class AppMetadataRepositoryUnknown extends AppMetadataRepositoryException {}
