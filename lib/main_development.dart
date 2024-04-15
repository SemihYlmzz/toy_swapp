import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toy_swapp/dependencies/dependencies.dart';
import 'package:toy_swapp/startup/startup.dart';

void main() async {
  // Flutter Initializer
  WidgetsFlutterBinding.ensureInitialized();

  // Dependencies
  const configDependencies = ConfigDependencies();
  const loggerDependencies = LoggerDependencies();
  const instanceDependencies = InstanceDependencies();
  const repositoryDependencies = RepositoryDependencies();
  const serviceDependencies = ServiceDependencies();

  // Start App
  runApp(
    const StartupScreen(
      configDependencies: configDependencies,
      loggerDependencies: loggerDependencies,
      instanceDependencies: instanceDependencies,
      repositoryDependencies: repositoryDependencies,
      serviceDependencies: serviceDependencies,
    ),
  );
}
