sealed class AppPreferencesRepositoryException implements Exception {
  const AppPreferencesRepositoryException();
}

class AppPreferencesRepositoryUnknown extends AppPreferencesRepositoryException {}
