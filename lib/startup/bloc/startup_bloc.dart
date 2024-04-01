import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/initializers/initializers.dart';

part 'startup_bloc.freezed.dart';
part 'startup_event.dart';
part 'startup_state.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc({
    required AppInitializer appInitializer,
  })  : _appInitializer = appInitializer,
        super(const StartupState()) {
    on<StartupEvent>(_onStartupEvent);
  }
  final AppInitializer _appInitializer;

  Future<void> _onStartupEvent(
    StartupEvent event,
    Emitter<StartupState> emit,
  ) async {
    await event.map(
      initializeAll: (e) async {
        emit(
          state.copyWith(
            isInitializing: true,
            displayErrorScreen: false,
            isInitializeError: false,
          ),
        );
        try {
          await Future<void>.delayed(const Duration(milliseconds: 300));
          final appRepositories = await _appInitializer.setupRequirements();

          emit(state.copyWith(appRepositories: appRepositories));
        } catch (exception) {
          emit(state.copyWith(isInitializeError: true));
        }
        emit(state.copyWith(isInitializing: false));
      },
      displayErrorScreen: (e) {
        emit(state.copyWith(displayErrorScreen: true));
      },
    );
  }
}
