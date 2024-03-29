sealed class SharedPreferencesException implements Exception {
  const SharedPreferencesException();
}

class SharedPreferencesUnknown extends SharedPreferencesException {}
