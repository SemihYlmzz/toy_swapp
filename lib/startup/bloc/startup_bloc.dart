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
    await event.map(
      initializeAllDependencies: (e) async {
        try {
          // Loggers
          _loggerDependencies.init();
          // Configs
          await _configDependencies.init();
          // Repositories
          final repositories = await _repositoryDependencies.init();
          // Instances
          final instances = await _instanceDependencies.init(
            repositories: repositories,
          );
          // Services
          final services = await _serviceDependencies.init(
            androidVersionSdkNumber:
                instances.deviceMetadata.androidInformation?.versionSdkNumber,
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
