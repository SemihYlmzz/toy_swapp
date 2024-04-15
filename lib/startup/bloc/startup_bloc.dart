import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../dependencies/dependencies.dart';

part 'startup_bloc.freezed.dart';
part 'startup_event.dart';
part 'startup_state.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc({
    required ConfigDependencies configDependencies,
    required LoggerDependencies loggerDependencies,
    required RepositoryDependencies repositoryDependencies,
    required ServiceDependencies serviceDependencies,
    required InstanceDependencies instanceDependencies,
  })  : _configDependencies = configDependencies,
        _loggerDependencies = loggerDependencies,
        _repositoryDependencies = repositoryDependencies,
        _serviceDependencies = serviceDependencies,
        _instanceDependencies = instanceDependencies,
        super(const StartupState()) {
    on<StartupEvent>(_onStartupEvent);
  }
  final ConfigDependencies _configDependencies;
  final LoggerDependencies _loggerDependencies;
  final RepositoryDependencies _repositoryDependencies;
  final ServiceDependencies _serviceDependencies;
  final InstanceDependencies _instanceDependencies;

  Future<void> _onStartupEvent(
    StartupEvent event,
    Emitter<StartupState> emit,
  ) async {
    // Will remove later
    final random = Random();
    await event.map(
      initializeAllDependencies: (e) async {
        emit(state.copyWith(progressValue: 0, isInitializeError: false));
        try {
          // Loggers
          _loggerDependencies.init();
          emit(const StartupState(progressValue: 0.1));
          await Future<void>.delayed(
            Duration(milliseconds: random.nextInt(400) + 100),
          );
          // Configs
          await _configDependencies.init();
          emit(const StartupState(progressValue: 0.3));
          await Future<void>.delayed(
            Duration(milliseconds: random.nextInt(400) + 100),
          ); // Repositories
          final repositories = await _repositoryDependencies.init();
          emit(const StartupState(progressValue: 0.6));
          await Future<void>.delayed(
            Duration(milliseconds: random.nextInt(400) + 100),
          ); // Instances
          final instances = await _instanceDependencies.init(
            repositories: repositories,
          );
          emit(const StartupState(progressValue: 0.8));
          await Future<void>.delayed(
            Duration(milliseconds: random.nextInt(400) + 100),
          ); // Services
          final services = await _serviceDependencies.init(
            androidVersionSdkNumber:
                instances.deviceMetadata.androidInformation?.versionSdkNumber,
          );
          emit(const StartupState(progressValue: 1));

          await Future<void>.delayed(
            Duration(milliseconds: random.nextInt(300) + 300),
          );
          emit(
            StartupState(
              appDependencies: AppDependencies(
                repositories: repositories,
                services: services,
                instances: instances,
              ),
            ),
          );
        } catch (exception) {
          emit(const StartupState(isInitializeError: true));
        }
      },
    );
  }
}
