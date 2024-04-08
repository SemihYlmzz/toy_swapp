import 'package:toy_swapp/errors/errors.dart';

sealed class AppPreferencesRepositoryException implements Failure {
  const AppPreferencesRepositoryException();
}

class AppPreferencesRepositoryUnknown
    extends AppPreferencesRepositoryException {}
