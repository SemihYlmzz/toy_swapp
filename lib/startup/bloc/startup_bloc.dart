import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences_api/shared_preferences_api.dart';
import 'package:toy_swapp/initializers/initializers.dart';

part 'startup_bloc.freezed.dart';
part 'startup_event.dart';
part 'startup_state.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc({
    required InitializeLocalDatabaseApis initializeLocalDatabaseApis,
    required InitializeLoggers initializeLoggers,
    required InitializeConfigs initializeConfigs,
  })  : _initializeLocalDatabaseApis = initializeLocalDatabaseApis,
        _initializeLoggers = initializeLoggers,
        _initializeConfigs = initializeConfigs,
        super(const StartupState()) {
    on<StartupEvent>(_onStartupEvent);
  }
  final InitializeLocalDatabaseApis _initializeLocalDatabaseApis;
  final InitializeLoggers _initializeLoggers;
  final InitializeConfigs _initializeConfigs;

  Future<void> _onStartupEvent(
    StartupEvent event,
    Emitter<StartupState> emit,
  ) async {
    await event.map(
      initializeAll: (e) async {
        emit(state.copyWith(isInitializing: true));
        try {
          // await Future<void>.delayed(const Duration(seconds: 15));
          _initializeLoggers.initializeAll();
          await _initializeConfigs.initializeAll();
          final localDatabase = await _initializeLocalDatabaseApis.initialize();

          emit(state.copyWith(localDatabaseApis: localDatabase));
        } catch (exception) {
          emit(state.copyWith(isInitializeError: true));
        }
        emit(state.copyWith(isInitializing: false));
      },
    );
  }
}
