sealed class LocalDatabaseException implements Exception {
  const LocalDatabaseException();
}

class LocalDatabaseUnknown extends LocalDatabaseException {}
