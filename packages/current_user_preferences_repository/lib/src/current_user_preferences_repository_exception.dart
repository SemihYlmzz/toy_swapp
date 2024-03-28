sealed class CurrentUserPreferencesRepositoryException implements Exception {
  const CurrentUserPreferencesRepositoryException();
}

class CurrentUserPreferencesRepositoryUnknown
    extends CurrentUserPreferencesRepositoryException {}
