sealed class RemoteDatabaseApiException implements Exception {
  const RemoteDatabaseApiException();
}

class RemoteDatabaseApiUnknown extends RemoteDatabaseApiException {}
