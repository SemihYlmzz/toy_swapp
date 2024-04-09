sealed class PermissionServiceException implements Exception {
  const PermissionServiceException();
}

class PermissionServiceUnknown extends PermissionServiceException {}
