import 'models.dart';

class AppDependencies {
  const AppDependencies({
    required this.services,
    required this.repositories,
    required this.instances,
  });
  final Services services;
  final Repositories repositories;
  final Instances instances;
}
