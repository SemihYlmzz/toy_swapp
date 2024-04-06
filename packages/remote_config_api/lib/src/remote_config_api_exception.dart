sealed class RemoteConfigApiException implements Exception {
  const RemoteConfigApiException();
}

class RemoteConfigApiUnknown extends RemoteConfigApiException {}
