import 'package:toy_swapp/initializers/initializers.dart';

class AppRequirements {
  const AppRequirements({
    required this.repositories,
    required this.isConfigsInitialized,
    required this.isLoggersInitialized,
  });

  final Repositories repositories;
  final bool isConfigsInitialized;
  final bool isLoggersInitialized;
}
